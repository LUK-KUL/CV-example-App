package com.example.cvapp.service;
import com.example.cvapp.model.EducationModel;
import com.example.cvapp.repository.EducationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class EducationService {

    private final EducationRepository educationRepository;


    public void addEducation(EducationModel education) {
        educationRepository.save(education);
    }


    public List<EducationModel> getEducationList() {
        return educationRepository.findAll()
                .stream()
                .sorted(Comparator.comparing(EducationModel::getStartEduDate).reversed())
                .collect(Collectors.toList());
    }


    public EducationModel findEduById(Long id) {
        return educationRepository.findById(id).orElse(null);
    }

    public void saveEditEducation (EducationModel editExperience) {
        educationRepository.save(editExperience);
    }

    public void removeEducation (Long id) {
        educationRepository.deleteById(id);
    }

    /*public Page<ExperienceModel> getAllExperiencePageable(Pageable pageable){
        return educationRepository.findAll(pageable);
    }
*/
    public void updateEducationDescription(Long id, String description){
        educationRepository.updateEduDescriptionById(id, description);
    }
    public void updateEducationMajor(Long id, String major){
        educationRepository.updateMajorById(id, major);
    }
    public void updateEducationAcademy(Long id, String academy){
        educationRepository.updateAcademyById(id, academy);
    }

    public void updateEducationDegree(Long id, String degree){
        educationRepository.updateDegreeById(id, degree);
    }
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public void updateEducationStartDate(Long id, Date startEduDate){
        educationRepository.updateStartEduDateById(id, startEduDate);
    }

    public void updateEducationEndDate(Long id, Date endEduDate){
        educationRepository.updateEndEduDateById(id, endEduDate);
    }
}
