package com.transformedge.apps.service;

import com.transformedge.apps.entity.TaskDailyComments;
import com.transformedge.apps.model.FinalReportModel;
import com.transformedge.apps.model.TaskDailyCommentsModel;
import com.transformedge.apps.model.TaskFinalDailyReportCommentsModel;

public interface DailyTaskCommentsService {
	TaskDailyComments saveDailyCommentsToTaskBySupervisor(final TaskDailyCommentsModel taskDailyCommentsModel, long taskId);
	void deleteDailyCommentsByCommentId(long commentId);
	void sendFianlDailyComments(TaskFinalDailyReportCommentsModel model, String from);
	FinalReportModel getFianlDailyCommentsByCommentId(String mail);
}
