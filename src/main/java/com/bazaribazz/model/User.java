package com.bazaribazz.model;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.annotation.Generated;
import javax.validation.constraints.Size;
import java.util.UUID;

/**
 * Created by dorsa on 1/2/17.
 */
/*
* @Entity
*@Table(name="users")
* */
public class User {

//    private Integer id;
    private UUID userID;
    @NotEmpty(message = "Please Enter Your First Name.")
    private String firstName;
    @NotEmpty(message = "Please Enter your Last Name")
    private String lastName;
    @NotEmpty(message = "Username cannot be empty")
    private String userName;
    @NotEmpty
    @Email
    private String email;
    @NotEmpty
    @Size(min = 6,max = 15,message = "Your password must between 6 and 15 characters")
    private String password;
    private Role role;

    public User(){
        userID = UUID.randomUUID();
    }

    public UUID getUserID() {
        return userID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
