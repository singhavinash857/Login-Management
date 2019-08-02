package com.transformedge.apps.model;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class FinalReportModel {
	private List<StatusReport> finalDailyReport = new ArrayList<>();
}
