package com.dev.wdpvendas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.wdpvendas.entity.Produto;

public interface ProdutoRepository extends JpaRepository<Produto, Long>{
    
}
