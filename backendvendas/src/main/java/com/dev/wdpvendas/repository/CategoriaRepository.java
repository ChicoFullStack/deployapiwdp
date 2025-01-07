package com.dev.wdpvendas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.wdpvendas.entity.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long>{
    
}
