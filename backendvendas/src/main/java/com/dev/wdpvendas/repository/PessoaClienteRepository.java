package com.dev.wdpvendas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.wdpvendas.entity.Pessoa;

public interface PessoaClienteRepository extends JpaRepository<Pessoa, Long>{
    
}
