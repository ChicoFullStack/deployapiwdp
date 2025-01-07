package com.dev.wdpvendas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.dev.wdpvendas.entity.Pedido;
import com.dev.wdpvendas.service.PedidoService;

import java.util.List;

@RestController
@RequestMapping("/api/pedido")
@CrossOrigin
public class PedidoController {

    @Autowired
    private PedidoService pedidoService;

    @GetMapping("/")
    public List<Pedido> buscarTodos(){
        return pedidoService.buscarTodos();
    }

    @GetMapping("/{id}")
    public Pedido buscarPorId(@PathVariable("id") Long id){
        return pedidoService.buscarPorId(id);
    }

    @PostMapping("/")
    public Pedido inserir(@RequestBody Pedido objeto){
        return pedidoService.inserir(objeto);
    }

    @PutMapping("/")
    public Pedido alterar(@RequestBody Pedido objeto){
        return pedidoService.alterar(objeto);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> excluir(@PathVariable("id") Long id){
        pedidoService.excluir(id);
        return ResponseEntity.ok().build();
    }
}
