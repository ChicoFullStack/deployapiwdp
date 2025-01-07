package com.dev.wdpvendas.entity;

import java.util.*;

import jakarta.persistence.*;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;

@Entity
@Table(name = "produto")
@Data
public class Produto {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(nullable = false)
    private String codigoSKU;
    @Column(nullable = false)
    private String nome;

    private Integer unidadesVendidas;
    private Integer quantidadeEstoque;

    @Column(nullable = false)
    @ElementCollection
    private List<String> subCategorias;

    @Column(nullable = false, columnDefinition = "TEXT")
    @Lob
    private String descricao;
    @Column(nullable = false)
    private Double preco;

    private Double precoPromocional;
    private Double avaliacao;

    /*
    @ManyToOne
    private Favorito favorito;

     */

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name="produto_id")
    @JsonManagedReference
    private List<DetalhesProduto> detalhesProduto = new ArrayList<>();

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name="produto_id")
    @JsonManagedReference
    private List<ProdutoImagens> imagens = new ArrayList<>();

    @ElementCollection
    private List<String> cores;
    @ElementCollection
    private List<String> tamanhos;

    private String marca;

    /*
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="idMarca")
    private Marca marca;
     */

    private String categoria;

    /*
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="categoriaId")
    private Categoria categoria;
     */

    @Temporal(TemporalType.TIMESTAMP)
    private Date dataCriacao;
    @Temporal(TemporalType.TIMESTAMP)
    private Date dataAtualizacao;

}
