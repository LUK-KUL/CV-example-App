package com.example.cvapp.model;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;


@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
public class EducationModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "major")
    private String major;

    @Column(name = "academy")
    private String academy;

    @Column(name = "edu_description")
    private String eduDescription;

    @Column(name = "degree")
    private String degree;

    @NotNull(message="Start data is required!")
    @Column(name = "start_edu_date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startEduDate;


    @Column(name = "end_edu_date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endEduDate;
}
