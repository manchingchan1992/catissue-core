
package com.krishagni.catissueplus.core.biospecimen.events;

import com.krishagni.catissueplus.core.common.events.EventStatus;
import com.krishagni.catissueplus.core.common.events.ResponseEvent;

public class ParticipantCreatedEvent extends ResponseEvent {

	private ParticipantDetails participantDto;

	public ParticipantDetails getParticipantDto() {
		return participantDto;
	}

	public void setParticipantDto(ParticipantDetails participantDto) {
		this.participantDto = participantDto;
	}
	
	public static ParticipantCreatedEvent ok(ParticipantDetails details)
	{
		ParticipantCreatedEvent event = new ParticipantCreatedEvent();
		event.setParticipantDto(details);
		event.setStatus(EventStatus.OK);
		return event;
	}

}