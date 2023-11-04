package com.example.cvapp.controller;

import com.example.cvapp.model.InterestsModel;
import com.example.cvapp.service.InterestsService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class InterestsController {
    private final InterestsService interestsService;

    @GetMapping("/interests")
    public String getInterestsList(Model model) {
        List<InterestsModel> interestsList = interestsService.getInterestsList();
        model.addAttribute("interestsModel", interestsList);
        return "interests/interests";
    }

    @GetMapping("/addInterests")
    public String addInterests(Model model) {
        List<InterestsModel> interestsModelList = interestsService.getInterestsList();
        model.addAttribute("interestsModel", interestsModelList);
        return "interests/addInterests";
    }

    @PostMapping("/addInterests")
    public RedirectView postAddInterests(InterestsModel interestsModel) {
        interestsService.addInterests(interestsModel);
        return new RedirectView("/interests");
    }

    @GetMapping("/editInterests/{id}")
    public String getEditInterests(@PathVariable("id") Long id, Model model) {
        InterestsModel interestsModel = interestsService.findInterestsById(id);
        model.addAttribute("interestsModel", interestsModel);
        return "interests/editInterests";
    }

    @PostMapping("/editInt/{id}")
    public RedirectView editInterests(InterestsModel editInterests) {
        interestsService.saveEditInterests(editInterests);
        return new RedirectView("/interests");
    }

    @PostMapping("/delInt/{id}")
    public RedirectView deleteInterests(@PathVariable("id") Long id) {
        interestsService.removeInterests(id);
        return new RedirectView("/interests");
    }
}
