<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ page language="java" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page import="edu.common.dynamicextensions.xmi.AnnotationUtil"%>
<%@ page import="edu.wustl.catissuecore.action.annotations.AnnotationConstants"%>
<%@ page import="edu.wustl.catissuecore.util.CatissueCoreCacheManager"%>
<%@ page import="edu.wustl.catissuecore.actionForm.SpecimenCollectionGroupForm"%>
<%@ page import="edu.wustl.catissuecore.util.global.Constants"%>

<head>
<style>
.active-column-1 {width:200px}
</style>

<LINK href="css/catissue_suite.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/styleSheet.css" />
<link rel="stylesheet" type="text/css" href="css/alretmessages.css"/>
<script  src="dhtmlx_suite/js/dhtmlxcommon.js"></script>
<script src="jss/ajax.js" type="text/javascript"></script>
<script src="jss/fileUploader.js" type="text/javascript"></script>

<link rel="stylesheet" type="text/css" href="dhtmlx_suite/css/dhtmlxcombo.css">
<link rel="stylesheet" type="text/css" href="dhtmlx_suite/skins/dhtmlxwindows_dhx_skyblue.css">

<script src="dhtmlx_suite/js/dhtmlxcommon.js"></script>
<script src="dhtmlx_suite/js/dhtmlxcombo.js"></script>
<script src="jss/calendarComponent.js"></script>
<script src="jss/script.js" type="text/javascript"></script>

<script src="dhtmlx_suite/js/dhtmlxcalendar.js"></script>
<link rel="stylesheet" type="text/css" href="dhtmlx_suite/skins/dhtmlxcalendar_dhx_skyblue.css" />
<link rel="stylesheet" type="text/css" href="dhtmlx_suite/css/dhtmlxcalendar.css" />

<LINK href="css/calanderComponent.css" type=text/css rel=stylesheet>

<script>
var comboData = new Array();
var statusId = new Array();
</script>


			<input type="hidden" id= "consentLevelId" name="consentLevelId" value="${consentsDto.consentLevelId}">
			<input type="hidden" id= "consentLevel" name="consentLevel" value="${consentsDto.consentLevel}">
			
			
			<table width="100%" border="0" cellpadding="3" cellspacing="0" class="whitetable_bg">
			<tr>
				<td>
					<div id="error" class="alert alert-error" style="display:none">
						<strong>Error!</strong> Change a few things up and try submitting again.
					</div>
					<div class="alert alert-success" id="success" style="display:none">
					   Consents updated Sucessfully.
					</div>
				</td>
		   </tr>
				<tr><td></td></tr>
				<tr>
					<td align="left" class="tr_bg_blue1"><span class="blue_ar_b">
										
						<div style="margin-top:2px;">
							<bean:message key="collectionprotocolregistration.consentform"/>
						</div>
					</span>
				  </td>
				</tr>
				<tr>
					<td>
					
						<table width="100%" border="0" cellspacing="0" cellpadding="3">
								<%--Signed URL --%>				
								<tr>
									<td class="noneditable" width="39%">
										&nbsp;&nbsp;&nbsp;<bean:message key="collectionprotocolregistration.signedurlconsent"/>
										
									</td>
									<td class="noneditable">
										<logic:equal name="consentLevel" value="participant">
												<input type="text" size="30" maxlength="255" class="black_ar"  value='${consentsDto.consentUrl}' id="consentUrl" />
										</logic:equal>
										<logic:notEqual name="consentLevel" value="participant">
											${consentsDto.consentUrl}
										</logic:notEqual>
										
									</td>
								</tr>
								<%--Witness Name --%>									
								<tr>
									<td class="noneditable">
										&nbsp;&nbsp;&nbsp;<bean:message key="collectionprotocolregistration.witnessname"/>
									</td>	
									<td class="noneditable">
										<logic:equal name="consentLevel" value="participant">
											<select name="witnessId"  id="witnessIdCombo">
												<logic:iterate id="witnessList" name="witnessList">
													<logic:notEqual name="witnessList"  property='name' value="${consentsDto.witnessId}">
														<option value="<bean:write name='witnessList' property='value'/>"><bean:write name="witnessList" property="name"/></option>
													</logic:notEqual>
													<logic:equal name="witnessList"  property='name' value="${consentsDto.witnessId}">
														<option value="<bean:write name='witnessList' property='value'/>" selected><bean:write name="witnessList" property="name"/></option>
													</logic:equal>
												</logic:iterate>
											</select>
											<script>
												 window.dhx_globalImgPath="dhtmlx_suite/imgs/";
												  var witness = new dhtmlXCombo("witnessIdCombo","witnessIdCombo","100px");
												  //response_combo.enableFilteringMode(true);
												  witness.setSize(200);
												  if('${consentsDto.witnessId}'!=0){
													witness.setComboValue('${consentsDto.witnessId}');
												  }
												 // comboData.push(response_combo);
												  //statusId.push("${consentTierDTO.consentTierId}");
											</script>
													
										</logic:equal>
										<logic:notEqual name="consentLevel" value="participant">
											${consentsDto.witnessName}
										</logic:notEqual>
									
									
									</td>
								</tr>
								<tr>
									<td class="noneditable">
										&nbsp;&nbsp;&nbsp;<bean:message key="collectionprotocolregistration.consentdate"/>
									</td>	
									<td class="noneditable">
										<logic:equal name="consentLevel" value="participant">
												<input type="text" size="10" name = "consentDate" class="black_ar"  value='<fmt:formatDate value="${consentsDto.consentDate}" pattern="${datePattern}" />' id="consentDate"  onclick="doInitCalendar('consentDate',false,'${uiDatePattern}');" />
												<span class="grey_ar_s capitalized"> [<bean:message key="date.pattern" />]</span>&nbsp;
										</logic:equal>
										<logic:notEqual name="consentLevel" value="participant">
											<fmt:formatDate value="${consentsDto.consentDate}" pattern="${datePattern}" />
										</logic:notEqual>
										
									</td>
								</tr>
						</table>
					
					
					
					</td>
				</tr>
				
				<tr>
					<td>
						<table cellpadding="3" cellspacing="0" border="0" width="100%" id="consentTable">
							<%-- Serial No # --%>	
							<tr>
								<td class="tableheading">
									<div align="left">
									<bean:message key="requestlist.dataTabel.serialNo.label" />
									</div>
								</td>
								<%-- Title ( Consent Tiers) --%>	
								<td class="tableheading">
									<div>	
									<bean:message key="collectionprotocolregistration.consentTiers" />
									</div>	
								</td>
								<%-- Title ( Consent Tiers) --%>	
								<td class="tableheading">
									<div>	
									<bean:message key="collectionprotocolregistration.participantResponses" />
									</div>	
								</td>
								<%--Title (Participant response) --%>	
								<logic:notEqual name="consentLevel" value="participant">
								<td class="tableheading">
									<div align="left">
									<bean:message key="consent.responsestatus" />
									</div>
								</td>
								</logic:notEqual>
							</tr>
							<c:set var="count" value='1' scope="page"/>
							<c:forEach var="consentTierDTO" items="${consentsDto.consentTierList}">	
								<tr>
									<td class='black_ar'>
									${count}
									</td>
									<%-- Get Consents # --%>	
									<td class='black_ar' width="31%">
									${consentTierDTO.consentStatment}
									</td>
									<td class='black_ar' width="31%">
									<logic:equal name="consentLevel" value="participant">
										<select name="participantResponse"  id="${consentTierDTO.id}">
										<c:forEach items="${requestScope.specimenResponseList}" var="response" >
											<option value="${response.value}">${response.name}</option>        
										</c:forEach>	
										</select>
										<script>
										  window.dhx_globalImgPath="dhtmlx_suite/imgs/";
										  var response_combo = new dhtmlXCombo("${consentTierDTO.id}","${consentTierDTO.id}","100px");
										  //response_combo.enableFilteringMode(true);
										  response_combo.setSize(200);
										  response_combo.setComboValue('${consentTierDTO.participantResponses}');
										  comboData.push(response_combo);
										  statusId.push("${consentTierDTO.id}");
										</script>
									</logic:equal>
									<logic:notEqual name="consentLevel" value="participant">
									${consentTierDTO.participantResponses}
									</logic:notEqual>
									</td>
									<logic:notEqual name="consentLevel" value="participant">
									<td align="left" class='black_ar'>
									
									<select name="consentStatus"  id="${consentTierDTO.id}">
										<c:forEach items="${requestScope.specimenResponseList}" var="response" >
											<option value="${response.value}">${response.name}</option>        
										</c:forEach>	
									</select>
									<script>
										  window.dhx_globalImgPath="dhtmlx_suite/imgs/";
										  var response_combo = new dhtmlXCombo("${consentTierDTO.id}","${consentTierDTO.id}","100px");
										  //response_combo.enableFilteringMode(true);
										  response_combo.setSize(200);
										  response_combo.setComboValue('${consentTierDTO.status}');
										  comboData.push(response_combo);
										  statusId.push("${consentTierDTO.id}");
									</script>
									
									</td>
									</logic:notEqual>
								</tr>
								<c:set var="count" value='${pageScope.count+1}' scope="page" />
							</c:forEach>
						</table>
					</td>
				</tr>			

				
				<tr>
					<td align="left" colspan="2" class="buttonbg">
						<table cellpadding="4" cellspacing="0" border="0" id="specimenPageButton" width="100%"> 
							<tr>
							<td class="buttonbg">
							<input type="button" value="Submit"
							onclick="onSubmit()" class="blue_ar_b">
							<input type="checkbox" name="objCheckbox"  id="objCheckbox" style="display:none" value="team" checked/>
							</td>
							</tr>
						</table>
					</td>
				</tr>
			 </table>
			
		<script>
			
			function onSubmit(){
				var consentDto = {};
				<logic:equal name="consentLevel" value="participant">
					consentDto.consentUrl = document.getElementById("consentUrl").value;
					consentDto.witnessId = witness.getSelectedValue();
					consentDto.consentDate= document.getElementById("consentDate").value;
				</logic:equal>
				var tabDataJSON =  new Array();
				var selectFields = document.getElementsByTagName("select");
				for(var cnt = 0;cnt<comboData.length;cnt++){
					var selectedField = comboData[cnt];
					var jsonObj = {};
					jsonObj.id = statusId[cnt];
					jsonObj.status = selectedField.getSelectedValue();
					jsonObj.participantResponses = selectedField.getSelectedValue();
					jsonObj.consentStatusId =  0;
					tabDataJSON.push(jsonObj);
				}
				//consentDto.consentTierList = JSON.stringify(tabDataJSON);
				consentDto.consentLevel = document.getElementById("consentLevel").value;
				consentDto.consentLevelId = document.getElementById("consentLevelId").value;
				var consentLevel = document.getElementById("consentLevel").value;
				var consentLevelId = document.getElementById("consentLevelId").value;
				var lodder = dhtmlxAjax.postSync("CatissueCommonAjaxAction.do","type=updateConsentTierStatus&consentLevel="+consentLevel+"&consentLevelId="+consentLevelId+"&dataJSON="+JSON.stringify(tabDataJSON)+"&consentDto="+JSON.stringify(consentDto));
				if(lodder.xmlDoc.responseText != null)
				{
					var response = eval('('+lodder.xmlDoc.responseText+')')
					if(response.success == "success")
					{
						document.getElementById('success').style.display='block';
					}
					else
					{
						document.getElementById('error').style.display='block';
					}
				}
				}
		</script>
	