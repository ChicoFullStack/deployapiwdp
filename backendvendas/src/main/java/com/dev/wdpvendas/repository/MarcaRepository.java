package com.dev.wdpvendas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.wdpvendas.entity.Marca;

public interface MarcaRepository extends JpaRepository<Marca, Long>{
    
}
