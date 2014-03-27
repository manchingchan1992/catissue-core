
package com.krishagni.catissueplus.core.biospecimen.services.impl;

import static com.krishagni.catissueplus.core.common.CommonValidator.isBlank;

import java.util.Map;
import java.util.Map.Entry;

import com.krishagni.catissueplus.core.biospecimen.domain.Participant;
import com.krishagni.catissueplus.core.biospecimen.domain.ParticipantMedicalIdentifier;
import com.krishagni.catissueplus.core.biospecimen.domain.factory.ParticipantErrorCode;
import com.krishagni.catissueplus.core.biospecimen.domain.factory.ParticipantFactory;
import com.krishagni.catissueplus.core.biospecimen.events.CreateParticipantEvent;
import com.krishagni.catissueplus.core.biospecimen.events.DeleteParticipantEvent;
import com.krishagni.catissueplus.core.biospecimen.events.ParticipantCreatedEvent;
import com.krishagni.catissueplus.core.biospecimen.events.ParticipantDeletedEvent;
import com.krishagni.catissueplus.core.biospecimen.events.ParticipantDetail;
import com.krishagni.catissueplus.core.biospecimen.events.ParticipantDetailEvent;
import com.krishagni.catissueplus.core.biospecimen.events.ParticipantUpdatedEvent;
import com.krishagni.catissueplus.core.biospecimen.events.ReqParticipantDetailEvent;
import com.krishagni.catissueplus.core.biospecimen.events.UpdateParticipantEvent;
import com.krishagni.catissueplus.core.biospecimen.repository.DaoFactory;
import com.krishagni.catissueplus.core.biospecimen.services.ParticipantService;
import com.krishagni.catissueplus.core.common.PlusTransactional;
import com.krishagni.catissueplus.core.common.errors.CatissueException;
import com.krishagni.catissueplus.core.common.errors.ObjectCreationException;
import com.krishagni.catissueplus.core.common.errors.ObjectUpdationException;

public class ParticipantServiceImpl implements ParticipantService {

	//TODO: Handle privileges
	private DaoFactory daoFactory;

	private final String SSN = "social security number";

	private static final String PMI = "participant medical identifier";

	private ObjectCreationException exceptionHandler;

	/**
	 * Participant factory to create/update and perform all validations on participant details 
	 */
	private ParticipantFactory participantFactory;

	public void setDaoFactory(DaoFactory daoFactory) {
		this.daoFactory = daoFactory;
	}

	public void setParticipantFactory(ParticipantFactory participantFactory) {
		this.participantFactory = participantFactory;
	}

	@Override
	@PlusTransactional
	public ParticipantDetailEvent getParticipant(ReqParticipantDetailEvent event) {
		Participant participant = daoFactory.getParticipantDao().getParticipant(event.getParticipantId());
		return ParticipantDetailEvent.ok(ParticipantDetail.fromDomain(participant));
	}

	@Override
	@PlusTransactional
	public ParticipantCreatedEvent createParticipant(CreateParticipantEvent event) {
		exceptionHandler = new ObjectCreationException();
		try {
			Participant participant = participantFactory.createParticipant(event.getParticipantDetail(), exceptionHandler);
			ensureUniqueSsn(participant.getSocialSecurityNumber());
			ensureUniquePMI(participant.getPmiCollection());
			exceptionHandler.checkErrorAndThrow();
			daoFactory.getParticipantDao().saveOrUpdate(participant);
			return ParticipantCreatedEvent.ok(ParticipantDetail.fromDomain(participant));
		}
		catch (ObjectCreationException ce) {
			return ParticipantCreatedEvent.invalidRequest(ParticipantErrorCode.ERRORS.message(), ce.getErroneousFields());
		}
		catch (Exception e) {
			return ParticipantCreatedEvent.serverError(e);
		}
	}

	/* 
	 * This will update the participant details.
	 * @see com.krishagni.catissueplus.core.services.ParticipantService#updateParticipant(com.krishagni.catissueplus.core.events.participants.UpdateParticipantEvent)
	 */
	@Override
	@PlusTransactional
	public ParticipantUpdatedEvent updateParticipant(UpdateParticipantEvent event) {
		exceptionHandler = new ObjectUpdationException();
		try {
			Long participantId = event.getParticipantId();
			Participant oldParticipant = daoFactory.getParticipantDao().getParticipant(participantId);
			if (oldParticipant == null) {
				return ParticipantUpdatedEvent.notFound(participantId);
			}
			Participant participant = participantFactory.createParticipant(event.getParticipantDetail(), exceptionHandler);
			validateSsn(oldParticipant.getSocialSecurityNumber(), participant.getSocialSecurityNumber());
			ensureUniquePMI(participant.getPmiCollection());
			exceptionHandler.checkErrorAndThrow();

			oldParticipant.update(participant);
			daoFactory.getParticipantDao().saveOrUpdate(oldParticipant);
			return ParticipantUpdatedEvent.ok(ParticipantDetail.fromDomain(oldParticipant));
		}
		catch (ObjectUpdationException ce) {
			return ParticipantUpdatedEvent.invalidRequest(ParticipantErrorCode.ERRORS.message(), ce.getErroneousFields());
		}
		catch (Exception e) {
			return ParticipantUpdatedEvent.serverError(e);
		}
	}

	@Override
	@PlusTransactional
	public ParticipantDeletedEvent delete(DeleteParticipantEvent event) {
		try {
			Participant participant = daoFactory.getParticipantDao().getParticipant(event.getId());
			if (participant == null) {
				return ParticipantDeletedEvent.notFound(event.getId());
			}
			participant.delete(event.isIncludeChildren());
			daoFactory.getParticipantDao().saveOrUpdate(participant);
			return ParticipantDeletedEvent.ok();
		}
		catch (CatissueException ce) {
			return ParticipantDeletedEvent.invalidRequest(ce.getMessage() + " : " + ce.getErroneousFields());
		}
		catch (Exception e) {
			return ParticipantDeletedEvent.serverError(e);
		}
	}

	private void validateSsn(String oldSsn, String newSsn) {
		if ((isBlank(oldSsn) && !isBlank(newSsn))) {
			ensureUniqueSsn(newSsn);
		}
		else if (!isBlank(oldSsn) && !isBlank(newSsn) && !oldSsn.equals(newSsn)) {
			ensureUniqueSsn(newSsn);
		}

	}

	private void ensureUniqueSsn(String ssn) {
		if (!daoFactory.getParticipantDao().isSsnUnique(ssn)) {
			exceptionHandler.addError(ParticipantErrorCode.DUPLICATE_SSN, SSN);
		}
	}

	private void ensureUniquePMI(Map<String, ParticipantMedicalIdentifier> pmiCollection) {
		//TODO: need to handle for update
		for (Entry<String, ParticipantMedicalIdentifier> entry : pmiCollection.entrySet()) {
			String siteName = entry.getKey();
			String mrn = entry.getValue().getMedicalRecordNumber();
			if (daoFactory.getParticipantDao().isPmiUnique(siteName, mrn)) {
				exceptionHandler.addError(ParticipantErrorCode.DUPLICATE_PMI, PMI);
			}

		}
	}

}