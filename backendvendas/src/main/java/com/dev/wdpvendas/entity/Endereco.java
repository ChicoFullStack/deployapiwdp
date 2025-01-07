package com.dev.wdpvendas.entity;

import java.util.Date;
import jakarta.persistence.*;
import lombok.Data;


@Entity
@Table(name = "endereco")
@Data
public class Endereco {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String cep;
    private String logradouro;
    private String numero;
    private String complemento;
    private String bairro;
    private String cidade;
    private String uf;

    @ManyToOne
    //@JoinColumn(name = "pessoa_id")
    private Pessoa pessoa;

    private Boolean isPrimary;

    @Temporal(TemporalType.TIMESTAMP)
    private Date dataCriacao;
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataAtualizacao;

}