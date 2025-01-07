package com.dev.wdpvendas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dev.wdpvendas.StatusPedido;
import com.dev.wdpvendas.entity.Pedido;
import com.dev.wdpvendas.repository.PedidoRepository;

import java.util.Date;
import java.util.List;

@Service
public class PedidoService {
    @Autowired
    private PedidoRepository pedidoRepository;

    public List<Pedido> buscarTodos() {
        return pedidoRepository.findAll();
    }

    public Pedido buscarPorId(Long id) {
        Pedido objeto = pedidoRepository.findById(id).get();
        return objeto;
    }

    public Pedido inserir(Pedido objeto) {
        objeto.setCreatedAt(new Date());
        objeto.setStatus(StatusPedido.PENDENTE);
        Pedido objetoNovo = pedidoRepository.saveAndFlush(objeto);
        return objetoNovo;
    }

    public Pedido alterar(Pedido objeto) {
        objeto.setUpdatedAt(new Date());
        objeto.setStatus(StatusPedido.PENDENTE);
        return pedidoRepository.saveAndFlush(objeto);
    }

    public void excluir(Long id) {
        Pedido objeto = pedidoRepository.findById(id).get();
        pedidoRepository.delete(objeto);
    }

}
