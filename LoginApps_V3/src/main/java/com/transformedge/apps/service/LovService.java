package com.transformedge.apps.service;

import java.util.List;

import com.transformedge.apps.entity.Designation;
import com.transformedge.apps.entity.LovsInfo;
import com.transformedge.apps.entity.Role;

public interface LovService {
	LovsInfo saveLovData(LovsInfo lovData);
	List<Designation> getDesignations();
	List<Role> getRoles();
}
