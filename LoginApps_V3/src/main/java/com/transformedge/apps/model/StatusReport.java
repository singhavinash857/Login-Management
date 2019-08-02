package com.transformedge.apps.model;

import java.sql.Date;

import lombok.Data;

@Data
public class StatusReport {
	private String name;
	private Date date;
	private String taskName;
	private String status;
	private String comments;
	private int hours;
}
