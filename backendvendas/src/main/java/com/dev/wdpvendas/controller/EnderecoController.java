package com.dev.wdpvendas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.dev.wdpvendas.dto.EnderecoRequestDTO;
import com.dev.wdpvendas.entity.Endereco;
import com.dev.wdpvendas.service.EnderecoService;

import java.util.List;

@RestController
@RequestMapping("/api/endereco")
@CrossOrigin
public class EnderecoController {
    @Autowired
    private EnderecoService enderecoService;

    @GetMapping("/")
    public List<Endereco> buscarTodos(){
        return enderecoService.buscarTodos();
    }

    @GetMapping("/{id}")
    public Endereco buscarPorId(@PathVariable("id") Long id){
        return enderecoService.buscarPorId(id);
    }

    @PostMapping("/")
    public Endereco inserir(@RequestBody EnderecoRequestDTO enderecoRequestDTO){
        return enderecoService.registrar(enderecoRequestDTO);
    }

    @PutMapping("/")
    public Endereco alterar(@RequestBody Endereco objeto){
        return enderecoService.alterar(objeto);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> excluir(@PathVariable("id") Long id){
        enderecoService.excluir(id);
        return ResponseEntity.ok().build();
    }
}
