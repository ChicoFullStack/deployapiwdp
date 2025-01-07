package com.dev.wdpvendas;

public enum PessoaRole {
    ADMIN("admin"),
    USER("user"),
    STEC("stec");

    private String role;

    PessoaRole(String role){
        this.role = role;
    }

    public String getRole(){
        return role;
    }

}
