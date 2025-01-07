package com.dev.wdpvendas.entity;

import com.dev.wdpvendas.StatusPedido;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;

import jakarta.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "pedido")
@Data
public class Pedido {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private Long pessoaId;
    private Long enderecoId;

    @Enumerated(EnumType.STRING)
    @Column(name = "status")
    private StatusPedido status;

    /*
    @OneToOne(
            mappedBy = "pedido",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    private Desconto desconto;

     */


    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name="pedido_id")
    @JsonManagedReference
    private List<ItemPedido> itensPedido = new ArrayList<>();

    private Double preco_total;

    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;

}
