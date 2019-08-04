package com.transformedge.apps.serviceimpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.transformedge.apps.entity.Designation;
import com.transformedge.apps.entity.Employee;
import com.transformedge.apps.entity.LovsInfo;
import com.transformedge.apps.entity.Role;
import com.transformedge.apps.repository.DesignationRepository;
import com.transformedge.apps.repository.EmployeeRepository;
import com.transformedge.apps.repository.LovDetailsRepository;
import com.transformedge.apps.repository.RoleRepository;
import com.transformedge.apps.repository.UserRepository;
import com.transformedge.apps.service.LovService;

@Service
public class LovServiceIMPL implements LovService{

	@Autowired
	private LovDetailsRepository lovDetailsRepository;
	
	@Autowired
	private DesignationRepository designationRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private EmployeeRepository employeeRepository;
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Override
	public LovsInfo saveLovData(final LovsInfo lovData) {
		logger.info("INSIDE LovServiceIMPL START METHOD saveLovData");
		return lovDetailsRepository.save(lovData);
		
	}

	@Override
	public List<Designation> getDesignations() {
		return (List<Designation>) designationRepository.findAll();
	}

	@Override
	public List<Role> getRoles() {
		return roleRepository.findAll();
	}

}
