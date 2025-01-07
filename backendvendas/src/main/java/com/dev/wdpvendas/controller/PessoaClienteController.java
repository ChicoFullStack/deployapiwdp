package com.dev.wdpvendas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.dev.wdpvendas.dto.PessoaClienteRequestDTO;
import com.dev.wdpvendas.entity.Pessoa;
import com.dev.wdpvendas.service.PessoaClienteService;

@RestController
@RequestMapping("/api/cliente")
@CrossOrigin
public class PessoaClienteController {
    
    @Autowired
    private PessoaClienteService pessoaClienteService;

    @GetMapping("/{id}")
    public Pessoa buscarPorId(@PathVariable("id") Long id){
        return pessoaClienteService.buscarPorId(id);
    }

    @PostMapping("/")
    public Pessoa inserir(@RequestBody PessoaClienteRequestDTO pessoaClienteRequestDTO){
        return pessoaClienteService.registrar(pessoaClienteRequestDTO);
    }

    @PutMapping("/")
    public Pessoa alterar(@RequestBody Pessoa objeto){
        return pessoaClienteService.alterar(objeto);
    }

}