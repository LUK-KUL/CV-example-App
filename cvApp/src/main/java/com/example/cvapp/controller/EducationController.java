package com.example.cvapp.controller;

import com.example.cvapp.model.EducationModel;

import com.example.cvapp.service.EducationService;
import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;


import javax.validation.Valid;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class EducationController {

    private final EducationService educationService;
    private final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    @GetMapping("/education")
    public String getEducationList(Model model) {
        List<EducationModel> educationList = educationService.getEducationList();
        model.addAttribute("educationModel", educationList);
        return "education/education";
    }

    @GetMapping("/addEducation")
    public String addEducation(Model model) {
        List<EducationModel> educationModelList = educationService.getEducationList();
        model.addAttribute("educationModel", educationModelList);
        return "education/addEducation";
    }

    @PostMapping("/addEducation")
    public RedirectView postAddEducation(@Valid EducationModel educationModel) {
        educationService.addEducation(educationModel);
        return new RedirectView("/education");
    }

    @GetMapping("/editEducation/{id}")
    public String getEditEducation(@PathVariable("id") Long id, Model model) {
        EducationModel educationModel = educationService.findEduById(id);
        model.addAttribute("educationModel", educationModel);
        return "education/editEducation";
    }

    @PostMapping("/editEdu/{id}")
    public RedirectView editEducation(EducationModel editEducation) {
        try {
            educationService.saveEditEducation(editEducation);
            return new RedirectView("/education");
        } catch (NullPointerException e) {
            return new RedirectView("/eduParseEx");
        }
    }

    @PostMapping("/delEdu/{id}")
    public RedirectView deleteEducation(@PathVariable("id") Long id) {
        educationService.removeEducation(id);
        return new RedirectView("/education");
    }

    @GetMapping("/editEduSingleField/{id}")
    public String getPatchEditEducationSingleField(@PathVariable("id") Long id, Model model) {
        EducationModel educationModel = educationService.findEduById(id);
        model.addAttribute("educationModel", educationModel);
        return "education/editSingleEducationField";
    }

    @PostMapping("/editEduDescription/{id}")
    public RedirectView patchEditEducationDescription(@PathVariable("id") Long id, @RequestParam String eduDescription) {
        educationService.updateEducationDescription(id, eduDescription);
        return new RedirectView("/education");
    }

    @PostMapping("/editEduMajor/{id}")
    public RedirectView patchEditEducationMajor(@PathVariable("id") Long id, @RequestParam String major) {
        educationService.updateEducationMajor(id, major);
        return new RedirectView("/education");
    }

    @PostMapping("/editEduDegree/{id}")
    public RedirectView patchEditEducationDegree(@PathVariable("id") Long id, @RequestParam String degree) {
        educationService.updateEducationDegree(id, degree);
        return new RedirectView("/education");
    }

    @PostMapping("/editEduAcademy/{id}")
    public RedirectView patchEditEducationAcademy(@PathVariable("id") Long id, @RequestParam String academy) {
        educationService.updateEducationAcademy(id, academy);
        return new RedirectView("/education");
    }

    /*@PostMapping("/editEduEndDate/{id}")
    public RedirectView patchEditEducationEndDate(@PathVariable("id") Long id, @RequestParam String endEduDate) {
        try {
            educationService.updateEducationEndDate(id, simpleDateFormat.parse(endEduDate));
            return new RedirectView("/education");
        } catch (ParseException e) {
            return new RedirectView("/eduParseEx");
        }
    }*/

    @PostMapping("/editEduStartDate/{id}")
    public RedirectView patchEditEducationStartDate(@PathVariable("id") Long id, @RequestParam String startEduDate) {
        try {
            educationService.updateEducationStartDate(id, simpleDateFormat.parse(startEduDate));
            return new RedirectView("/education");
        } catch (ParseException e) {
            return new RedirectView("/eduParseEx");
        }
    }

    @PostMapping("/editEduEndDate/{id}")
    public RedirectView patchEditEducationEndDate(@PathVariable("id") Long id, @RequestParam String endEduDate) {
        try {
            educationService.updateEducationEndDate(id, simpleDateFormat.parse(endEduDate));
            return new RedirectView("/education");
        } catch (ParseException e) {
            educationService.updateEducationEndDate(id, null);
            return new RedirectView("/education");
        }
    }

    @GetMapping("/eduParseEx")
    public String getParseEx() {
        return "parseExep/parseEx";
    }

}
