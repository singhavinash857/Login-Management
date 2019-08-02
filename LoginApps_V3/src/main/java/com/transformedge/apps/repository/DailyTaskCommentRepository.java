package com.transformedge.apps.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.transformedge.apps.entity.TaskDailyComments;
import com.transformedge.apps.model.FinalReportModel;

public interface DailyTaskCommentRepository extends CrudRepository<TaskDailyComments, Long>{
//	
//	@Query
//	FinalReportModel getFianlDailyCommentsByCommentId(String mail);
}
