package com.transformedge.apps.serviceimpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.transformedge.apps.entity.Designation;
import com.transformedge.apps.entity.LovsInfo;
import com.transformedge.apps.entity.Role;
import com.transformedge.apps.repository.DesignationRepository;
import com.transformedge.apps.repository.LovDetailsRepository;
import com.transformedge.apps.repository.RoleRepository;
import com.transformedge.apps.service.LovService;

@Service
public class LovServiceIMPL implements LovService{

	@Autowired
	private LovDetailsRepository lovDetailsRepository;
	
	@Autowired
	private DesignationRepository designationRepository;
	
	@Autowired
	private RoleRepository roleRepository;
		
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

	@PersistenceContext
	private EntityManager entityManager;

	
	@Override
	public List<Map<String, String>> getEmployeeMails() {
		Query query = entityManager.createNativeQuery("select * from employee where employee_status = 'Active'");
		@SuppressWarnings("unchecked")
		List<Object[]> list = query.getResultList();
		List<Map<String,String>> mapList = new ArrayList<>();
		if (!list.isEmpty()){ 
			for(int i = 0 ; i < list.size() ; i++){
				Object[] obj = list.get(i);
				Map<String,String> map = new HashMap<String,String>();
				map.put(obj[3]+" "+obj[4], (String) obj[5]);
				mapList.add(map);
			}
		}
		return mapList;
	}

}