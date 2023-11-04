package com.example.cvapp.service;

import com.example.cvapp.model.ExperienceModel;
import com.example.cvapp.repository.ExperienceRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ExperienceService {

    private final ExperienceRepository experienceRepository;


    public void addExperience(ExperienceModel experience) {
        experienceRepository.save(experience);
    }


    public List<ExperienceModel> getExperienceList() {
        return experienceRepository.findAll()
                .stream()
                .sorted(Comparator.comparing(ExperienceModel::getStartDate).reversed())
                .collect(Collectors.toList());
    }


    public ExperienceModel findById(Long id) {
        return experienceRepository.findById(id).orElse(null);
    }

    public void saveEditExperience (ExperienceModel editExperience) {
        experienceRepository.save(editExperience);
    }

    public void removeExperience (Long id) {
        experienceRepository.deleteById(id);
    }

    /*public Page<ExperienceModel> getAllExperiencePageable(Pageable pageable){
        return experienceRepository.findAll(pageable);
    }
*/
    public void updateExperienceDescription(Long id, String description){
        experienceRepository.updateDescriptionById(id, description);
    }
    public void updateExperienceJob(Long id, String job){
        experienceRepository.updateJobById(id, job);
    }
    public void updateExperienceCompany(Long id, String company){
        experienceRepository.updateCompanyById(id, company);
    }
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public void updateExperienceStartDate(Long id, Date startDate){
        experienceRepository.updateStartDateById(id, startDate);
    }

    public void updateExperienceEndDate(Long id, Date endDate){
        experienceRepository.updateEndDateById(id, endDate);
    }

}
