package com.example.cvapp.service;

import com.example.cvapp.model.InterestsModel;
import com.example.cvapp.repository.InterestsRepository;

import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Service;


import java.util.List;


@Service
@RequiredArgsConstructor
public class InterestsService {
    private final InterestsRepository interestsRepository;


    public void addInterests(InterestsModel interests) {
        interestsRepository.save(interests);
    }


    public List<InterestsModel> getInterestsList() {
        return interestsRepository.findAll();
    }


    public InterestsModel findInterestsById(Long id) {
        return interestsRepository.findById(id).orElse(null);
    }

    public void saveEditInterests(InterestsModel editInterests) {
        interestsRepository.save(editInterests);
    }

    public void removeInterests(Long id) {
        interestsRepository.deleteById(id);
    }
}
