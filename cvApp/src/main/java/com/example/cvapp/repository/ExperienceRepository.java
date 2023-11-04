package com.example.cvapp.repository;

import com.example.cvapp.model.ExperienceModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Repository
public interface ExperienceRepository extends JpaRepository <ExperienceModel, Long> {
    @Modifying
    @Transactional
    @Query("UPDATE ExperienceModel e SET e.description =:description WHERE e.id =:id")
    int updateDescriptionById(@Param("id") Long id, @Param("description") String description);
    @Modifying
    @Transactional
    @Query("UPDATE ExperienceModel e SET e.job =:job WHERE e.id =:id")
    int updateJobById(@Param("id") Long id, @Param("job") String job);
    @Modifying
    @Transactional
    @Query("UPDATE ExperienceModel e SET e.company =:company WHERE e.id =:id")
    int updateCompanyById(@Param("id") Long id, @Param("company") String company);
    @Modifying
    @Transactional
    @Query("UPDATE ExperienceModel e SET e.startDate =:startDate WHERE e.id =:id")
    int updateStartDateById(@Param("id") Long id, @Param("startDate") Date startDate);
    @Modifying
    @Transactional
    @Query("UPDATE ExperienceModel e SET e.endDate =:endDate WHERE e.id =:id")
    int updateEndDateById(@Param("id") Long id, @Param("endDate") Date endDate);

    Page<ExperienceModel> findAll(Pageable pageable);
}
