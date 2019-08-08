package com.transformedge.apps.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.transformedge.apps.appconfiguration.Translator;
import com.transformedge.apps.entity.Designation;
import com.transformedge.apps.entity.LovsInfo;
import com.transformedge.apps.entity.Role;
import com.transformedge.apps.exceptions.ErrorFormInfo;
import com.transformedge.apps.service.LovService;

@RestController
@RequestMapping(value="${spring.data.rest.base-path}/lov_controller")
public class LovController {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private LovService  lovService;

	@RequestMapping(value="/save-lov-detail")
	public ResponseEntity<?> saveLovDetails(@RequestBody @Valid LovsInfo lovData,HttpServletRequest request){
		logger.info("INSIDE LovController START saveLovDetails METHOD");
		final LovsInfo registeredLov = lovService.saveLovData(lovData);
		ErrorFormInfo errorInfo = null;
		if (registeredLov != null) {
			String successMsg = Translator.toLocale("lov.added.successfully");
			errorInfo = new ErrorFormInfo(HttpStatus.OK, true, request.getRequestURI(), successMsg, null);
			return new ResponseEntity<>(errorInfo, HttpStatus.OK);
		}
		return new ResponseEntity<>(errorInfo, HttpStatus.RESET_CONTENT);
	}

	@GetMapping(value="/get-designations")
	public ResponseEntity<?> getDesignations(HttpServletRequest request){
		List<Designation> designationList = lovService.getDesignations();
		ErrorFormInfo errorInfo = null;
		if(designationList != null){
			return new ResponseEntity<>(designationList , HttpStatus.OK);
		}else{
			String successMsg = Translator.toLocale("user.list.notExist");
			errorInfo = new ErrorFormInfo(HttpStatus.NOT_FOUND, true, request.getRequestURI(), successMsg, null);
		}
		return new ResponseEntity<>(errorInfo, HttpStatus.NOT_FOUND);
	}
	
	@GetMapping(value="/get-roles")
	public ResponseEntity<?> getRoles(HttpServletRequest request){
		List<Role> roleList = lovService.getRoles();
		ErrorFormInfo errorInfo = null;
		if(roleList != null){
			return new ResponseEntity<>(roleList , HttpStatus.OK);
		}else{
			String successMsg = Translator.toLocale("user.list.notExist");
			errorInfo = new ErrorFormInfo(HttpStatus.NOT_FOUND, true, request.getRequestURI(), successMsg, null);
		}
		return new ResponseEntity<>(errorInfo, HttpStatus.NOT_FOUND);
	}
	
	@GetMapping(value="/get-employee-mails")
	public ResponseEntity<?> getEmployeeMails(HttpServletRequest request){
		List<Map<String,String>> roleList = lovService.getEmployeeMails();
		ErrorFormInfo errorInfo = null;
		if(roleList != null){
			return new ResponseEntity<>(roleList , HttpStatus.OK);
		}else{
			String successMsg = Translator.toLocale("user.list.notExist");
			errorInfo = new ErrorFormInfo(HttpStatus.NOT_FOUND, true, request.getRequestURI(), successMsg, null);
		}
		return new ResponseEntity<>(errorInfo, HttpStatus.NOT_FOUND);
	}
}
