
package com.krishagni.catissueplus.core.biospecimen.services;

import com.krishagni.catissueplus.core.biospecimen.events.AllParticipantsSummaryEvent;
import com.krishagni.catissueplus.core.biospecimen.events.CreateParticipantEvent;
import com.krishagni.catissueplus.core.biospecimen.events.ParticipantCreatedEvent;
import com.krishagni.catissueplus.core.biospecimen.events.ParticipantDetailsEvent;
import com.krishagni.catissueplus.core.biospecimen.events.ParticipantUpdatedEvent;
import com.krishagni.catissueplus.core.biospecimen.events.ReqParticipantDetailEvent;
import com.krishagni.catissueplus.core.biospecimen.events.ReqParticipantsSummaryEvent;
import com.krishagni.catissueplus.core.biospecimen.events.UpdateParticipantEvent;
import com.krishagni.catissueplus.core.biospecimen.repository.ParticipantDao;

public interface ParticipantService {

	public AllParticipantsSummaryEvent getallParticipants(ReqParticipantsSummaryEvent event);

	public ParticipantDetailsEvent getParticipant(ReqParticipantDetailEvent event);

	public ParticipantCreatedEvent createParticipant(CreateParticipantEvent event);

	public ParticipantUpdatedEvent updateParticipant(UpdateParticipantEvent event);

	public Object listPedigree(ReqParticipantDetailEvent event);

	public Object updateRelation();

	public Object createRelation();
}