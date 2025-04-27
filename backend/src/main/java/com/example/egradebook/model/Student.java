package com.example.egradebook.model;

import javax.persistence.*;

@Entity
public class Student {
  @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  private String firstName;
  private String lastName;
  private String studentClass;

  public Long getId() { return id; }
  public void setId(Long id) { this.id = id; }      // <-- brakująca metoda
  public String getFirstName() { return firstName; }
  public void setFirstName(String firstName) { this.firstName = firstName; }
  public String getLastName() { return lastName; }
  public void setLastName(String lastName) { this.lastName = lastName; }
  public String getStudentClass() { return studentClass; }
  public void setStudentClass(String studentClass) { this.studentClass = studentClass; }
}
