package com.example.cvapp.controller;

import com.example.cvapp.model.ExperienceModel;
import com.example.cvapp.service.ExperienceService;
import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class ExperienceController {

    private final ExperienceService experienceService;
    private final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    @GetMapping("/experience")
    public String getExperienceList(Model model) {
            List<ExperienceModel> experienceList = experienceService.getExperienceList();
            model.addAttribute("experienceModel", experienceList);
            return "experience/experience";
            //TODO handle null pointer exception
    }

    @GetMapping("/addExperience")
    public String addExperience(Model model) {
        List<ExperienceModel> experienceModelList = experienceService.getExperienceList();
        model.addAttribute("experienceModel", experienceModelList);
        return "experience/addExperience";
    }

    @PostMapping("/addExperience")
    public RedirectView postAddExperience(ExperienceModel experienceModel) {
        experienceService.addExperience(experienceModel);
        return new RedirectView("/experience");
    }

    @GetMapping("/editExperience/{id}")
    public String getEditExperience(@PathVariable("id") Long id, Model model) {
        ExperienceModel experienceModel = experienceService.findById(id);
        model.addAttribute("experienceModel", experienceModel);
        return "experience/editExperience";
    }

    @PostMapping("/editExp/{id}")
    public RedirectView editExperience(ExperienceModel editExperience) {
            experienceService.saveEditExperience(editExperience);
            return new RedirectView("/experience");
    }

    @PostMapping("/delExp/{id}")
    public RedirectView deleteExperience(@PathVariable("id") Long id) {
        experienceService.removeExperience(id);
        return new RedirectView("/experience");
    }

    @GetMapping("/editExpSingleField/{id}")
    public String getPatchEditExperienceSingleField(@PathVariable("id") Long id, Model model) {
        ExperienceModel experienceModel = experienceService.findById(id);
        model.addAttribute("experienceModel", experienceModel);
        return "experience/editSingleExperienceField";
    }

    @PostMapping("/editExpDescription/{id}")
    public RedirectView patchEditExperienceDescription(@PathVariable("id") Long id, @RequestParam String description) {
        experienceService.updateExperienceDescription(id, description);
        return new RedirectView("/experience");
    }

    @PostMapping("/editExpJob/{id}")
    public RedirectView patchEditExperienceJob(@PathVariable("id") Long id, @RequestParam String job) {
        experienceService.updateExperienceJob(id, job);
        return new RedirectView("/experience");
    }

    @PostMapping("/editExpCompany/{id}")
    public RedirectView patchEditExperienceCompany(@PathVariable("id") Long id, @RequestParam String company) {
        experienceService.updateExperienceCompany(id, company);
        return new RedirectView("/experience");
    }


    @PostMapping("/editExpStartDate/{id}")
    public RedirectView patchEditExperienceStartDate(@PathVariable("id") Long id, @RequestParam String startDate) {
        try {
            experienceService.updateExperienceStartDate(id, simpleDateFormat.parse(startDate));
            return new RedirectView("/experience");
        } catch (ParseException e) {
            return new RedirectView("/expParseEx");
        }
    }

    @PostMapping("/editExpEndDate/{id}")
    public RedirectView patchEditExperienceEndDate(@PathVariable("id") Long id, @RequestParam String endDate) {
        try {
            experienceService.updateExperienceEndDate(id, simpleDateFormat.parse(endDate));
            return new RedirectView("/experience");
        } catch (ParseException e) {
            experienceService.updateExperienceEndDate(id, null);
            return new RedirectView("/experience");
        }
    }



    @GetMapping("/expParseEx")
    public String getParseEx() {
        return "parseExep/parseEx";
    }

}
