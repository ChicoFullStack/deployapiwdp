package com.dev.wdpvendas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.wdpvendas.entity.Endereco;

public interface EnderecoRepository extends JpaRepository<Endereco, Long> {
}
