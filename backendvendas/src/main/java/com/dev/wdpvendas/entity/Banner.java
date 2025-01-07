package com.dev.wdpvendas.entity;

import lombok.Data;

import java.util.Date;

import jakarta.persistence.*;

@Entity
@Table(name = "banner")
@Data
public class Banner {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(nullable = false)
    private String categoria;
    @Column(nullable = false)
    private String imagemDesktop;
    @Column(nullable = false)
    private String imagemMobile;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(nullable = false)
    private Date dataCriacao;
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataAtualizacao;
}

