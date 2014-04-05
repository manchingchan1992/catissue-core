
package com.krishagni.catissueplus.core.notification.services.impl;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import com.krishagni.catissueplus.core.audit.domain.Audit;
import com.krishagni.catissueplus.core.biospecimen.repository.DaoFactory;
import com.krishagni.catissueplus.core.biospecimen.repository.ParticipantDao;
import com.krishagni.catissueplus.core.common.CaTissueAppContext;
import com.krishagni.catissueplus.core.common.PlusTransactional;
import com.krishagni.catissueplus.core.common.util.ObjectType;
import com.krishagni.catissueplus.core.notification.domain.ExtAppNotificationStatus;
import com.krishagni.catissueplus.core.notification.domain.ExternalApplication;
import com.krishagni.catissueplus.core.notification.events.NotificationDto;
import com.krishagni.catissueplus.core.notification.services.ExternalAppNotificationService;
import com.krishagni.catissueplus.core.notification.services.ExternalAppService;
import com.krishagni.catissueplus.core.notification.util.ExternalApplications;

import edu.wustl.common.util.logger.Logger;

@Service
public class ExternalAppNotificationServiceImpl implements ExternalAppNotificationService {

	private static final Logger LOGGER = Logger.getCommonLogger(ExternalAppNotificationServiceImpl.class);

	public enum NotificationStatus {
		NEW, PROCESSED, FAIL
	};

	public static final String SUCCESS = "Success";

	private DaoFactory daoFactory;

	public void setDaoFactory(DaoFactory daoFactory) {
		this.daoFactory = daoFactory;
	}

	/**
	 * This method retrives all notification objects & notify each external
	 * application.
	 */
	@Override
	public void notifyExternalApps() {
		ApplicationContext caTissueContext = CaTissueAppContext.getInstance();
		ExternalAppNotificationService extAppNotifSvc = (ExternalAppNotificationService) caTissueContext
				.getBean("extAppNotificationService");
		List<NotificationDto> notificationObjects = extAppNotifSvc.getNotificationObjects();
		for (NotificationDto notifEvent : notificationObjects) {
			extAppNotifSvc.notifyExternalApps(notifEvent);
		}
	}

	@Override
	@PlusTransactional
	public void notifyExternalApps(NotificationDto notifDto) {
		try {
			ApplicationContext caTissueContext = CaTissueAppContext.getInstance();
			ExternalApplications extAppsBean = (ExternalApplications) caTissueContext.getBean("externalApplications");
			List<ExternalApplication> extApps = extAppsBean.getAllExternalApplications();

			for (ExternalApplication externalApplication : extApps) {
				Object domainObj = getDomainObject(notifDto.getObjectType(), notifDto.getObjectId());
				Class<?> externalAppClass;
				externalAppClass = Class.forName(externalApplication.getServiceClass());
				ExternalAppService extApplication = (ExternalAppService) externalAppClass.newInstance();

				String result = null;
				switch (notifDto.getOperation()) {
					case INSERT :
						result = extApplication.notifyInsert(notifDto.getObjectType(), domainObj);
						break;
					case UPDATE :
						result = extApplication.notifyUpdate(notifDto.getObjectType(), domainObj);
						break;
				}
				ExtAppNotificationStatus extAppNotif = new ExtAppNotificationStatus();
				Audit audit = new Audit();
				audit.setId(notifDto.getAuditId());
				extAppNotif.setAudit(audit);
				extAppNotif.setExternalApplication(externalApplication);
				String status = null;
				if (isSuccess(result))
					status = NotificationStatus.PROCESSED.toString();
				else
					status = NotificationStatus.FAIL.toString();
				extAppNotif.setStatus(status);
				daoFactory.getExternalAppNotificationDao().saveOrUpdate(extAppNotif);
			}

		}
		catch (Exception ex) {
			LOGGER.error("Exception while notifying " + notifDto.getObjectType() + " Exception : " + ex.getMessage());
		}

	}

	private boolean isSuccess(String result) {
		boolean isSuccess = false;
		if (result != null && SUCCESS.toString().equalsIgnoreCase(result)) {
			isSuccess = true;
		}
		return isSuccess;
	}

	@Override
	@PlusTransactional
	public List<NotificationDto> getNotificationObjects() {
		return daoFactory.getExternalAppNotificationDao().getNotificationObjects();
	}

	private Object getDomainObject(ObjectType objectType, Long objectId) {
		Object object = null;
		switch (objectType) {
			case PARTICIPANT :
				ParticipantDao dao = daoFactory.getParticipantDao();
				object = dao.getParticipant(objectId);
				break;
		}
		return object;
	}

}