package com.transformedge.apps.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="designation")
public class Designation {
	
	@Id
	private Long id;
	private String designationName;
}
