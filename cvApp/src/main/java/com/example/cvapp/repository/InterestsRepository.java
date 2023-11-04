package com.example.cvapp.repository;

import com.example.cvapp.model.InterestsModel;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;


@Repository
public interface InterestsRepository extends JpaRepository<InterestsModel, Long> {
}
