package com.dev.wdpvendas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dev.wdpvendas.dto.PessoaRequestDTO;
import com.dev.wdpvendas.entity.Pessoa;
import com.dev.wdpvendas.service.PessoaService;

@RestController
@RequestMapping("/api/pessoa")
@CrossOrigin
public class PessoaController {
    
    @Autowired
    private PessoaService pessoaService;

    @GetMapping("/")
    public List<Pessoa> buscarTodos(){
       return pessoaService.buscarTodos();
    }


    @GetMapping("/{id}")
    public Pessoa buscarPorId(@PathVariable("id") Long id){
        return pessoaService.buscarPorId(id);
    }

    @PostMapping("/")
    public Pessoa inserir(@RequestBody PessoaRequestDTO pessoaRequestDTO){
        return pessoaService.inserir(pessoaRequestDTO);
    }

    @PutMapping("/")
    public Pessoa alterar(@RequestBody Pessoa objeto){
        return pessoaService.alterar(objeto);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> excluir(@PathVariable("id") Long id){
        pessoaService.excluir(id);
        return ResponseEntity.ok().build();
    }

}