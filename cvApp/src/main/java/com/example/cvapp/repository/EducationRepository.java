package com.example.cvapp.repository;
import com.example.cvapp.model.EducationModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Repository
public interface EducationRepository extends JpaRepository <EducationModel, Long> {
    @Modifying
    @Transactional
    @Query("UPDATE EducationModel ed SET ed.eduDescription =:eduDescription WHERE ed.id =:id")
    int updateEduDescriptionById(@Param("id") Long id, @Param("eduDescription") String eduDescription);
    @Modifying
    @Transactional
    @Query("UPDATE EducationModel ed SET ed.major =:major WHERE ed.id =:id")
    int updateMajorById(@Param("id") Long id, @Param("major") String major);
    @Modifying
    @Transactional
    @Query("UPDATE EducationModel ed SET ed.academy =:academy WHERE ed.id =:id")
    int updateAcademyById(@Param("id") Long id, @Param("academy") String academy);
    @Modifying
    @Transactional
    @Query("UPDATE EducationModel ed SET ed.startEduDate =:startEduDate WHERE ed.id =:id")
    int updateStartEduDateById(@Param("id") Long id, @Param("startEduDate") Date startEduDate);
    @Modifying
    @Transactional
    @Query("UPDATE EducationModel ed SET ed.endEduDate =:endEduDate WHERE ed.id =:id")
    int updateEndEduDateById(@Param("id") Long id, @Param("endEduDate") Date endEduDate);

    @Modifying
    @Transactional
    @Query("UPDATE EducationModel ed SET ed.degree =:degree WHERE ed.id =:id")
    int updateDegreeById(@Param("id") Long id, @Param("degree") String degree);
}
