package edu.wustl.catissuecore.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.util.LabelValueBean;

import com.google.gson.Gson;

import edu.emory.mathcs.backport.java.util.Arrays;
import edu.wustl.catissuecore.actionForm.NewSpecimenForm;
import edu.wustl.catissuecore.bizlogic.NewSpecimenBizLogic;
import edu.wustl.catissuecore.bizlogic.SpecimenBizlogic;
import edu.wustl.catissuecore.dto.SpecimenDTO;
import edu.wustl.catissuecore.util.global.AppUtility;
import edu.wustl.catissuecore.util.global.Constants;
import edu.wustl.common.beans.NameValueBean;
import edu.wustl.common.beans.SessionDataBean;
import edu.wustl.common.util.Utility;
import edu.wustl.common.util.global.Validator;
import edu.wustl.dao.DAO;

public class SpecimenEditAction extends CatissueBaseAction{

	@Override
	protected ActionForward executeCatissueAction(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		
		SpecimenDTO specimenDTO = new SpecimenDTO();
		String obj = request.getParameter(Constants.SYSTEM_IDENTIFIER);
		if(!Validator.isEmpty(obj))
		{
			Long identifier = Long.valueOf(Utility.toLong(obj));
			NewSpecimenBizLogic bizLogic = new NewSpecimenBizLogic();
			specimenDTO = bizLogic.getDTO(identifier);
			request.setAttribute("specimenDTO", specimenDTO);
		}
		List<NameValueBean> specimenClassList = new ArrayList<NameValueBean>();
		List<NameValueBean> collectionStatusList = new ArrayList<NameValueBean>();
		// sri: create 4 lists, and in jsp allow edit
			request.setAttribute(Constants.SPECIMEN_TYPE_LIST, AppUtility.getSpecimenTypes(specimenDTO.getClassName()));
			request.setAttribute(Constants.TISSUE_TYPE_LIST, AppUtility.getSpecimenTypes(Constants.TISSUE));
			request.setAttribute(Constants.FLUID_TYPE_LIST, AppUtility.getSpecimenTypes(Constants.FLUID));
			request.setAttribute(Constants.CELL_TYPE_LIST, AppUtility.getSpecimenTypes(Constants.CELL));
			request.setAttribute(Constants.MOLECULAR_TYPE_LIST, AppUtility.getSpecimenTypes(Constants.MOLECULAR));
			
			request.setAttribute(Constants.PATHOLOGICAL_STATUS_LIST, AppUtility.getListFromCDE(Constants.CDE_NAME_PATHOLOGICAL_STATUS));
			request.setAttribute(Constants.TISSUE_SITE_LIST, AppUtility.tissueSiteList());
			request.setAttribute(Constants.TISSUE_SIDE_LIST, AppUtility.getListFromCDE(Constants.CDE_NAME_TISSUE_SIDE));
//		}
		
		specimenClassList.add(new NameValueBean(specimenDTO.getClassName(),specimenDTO.getClassName()));
		request.setAttribute(Constants.SPECIMEN_CLASS_LIST, specimenClassList);
		for (String status : Constants.SPECIMEN_COLLECTION_STATUS_VALUES) 
		{
			collectionStatusList.add(new NameValueBean(status,status));
		}
		request.setAttribute(Constants.COLLECTIONSTATUSLIST,collectionStatusList);
		
		return mapping.findForward(Constants.PAGE_OF_NEW_SPECIMEN);
	}

}
