package com.transformedge.apps.model;

import java.util.List;

import lombok.Data;

@Data
public class TaskFinalDailyReportCommentsModel {
	private List<String> to;
	private List<String>  cc;
	private String subject;
	private List<StatusReport> data;
}
