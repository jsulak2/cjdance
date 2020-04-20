package com.cjdance.cjdance.Models;

import javax.persistence.;

@Entity
@Table(name = "employee")
public class employee {
    @Id
    @Column(name = "id")
    private String id;
    @Column(name = "firstname")
    private String firstName;

}
