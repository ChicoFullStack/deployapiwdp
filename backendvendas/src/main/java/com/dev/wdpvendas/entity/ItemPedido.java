package com.dev.wdpvendas.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Data;

import jakarta.persistence.*;

@Entity
@Table(name = "item_pedido")
@Data
public class ItemPedido {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JsonBackReference
    private Pedido pedido;

    private Long produtoId;
    private Integer quantidade;
    private Double preco;
    //@Formula("quantidade * preco")
    private Double preco_total;

}
