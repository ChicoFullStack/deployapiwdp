package com.dev.wdpvendas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.wdpvendas.entity.Pedido;

public interface PedidoRepository extends JpaRepository<Pedido, Long> {
}
