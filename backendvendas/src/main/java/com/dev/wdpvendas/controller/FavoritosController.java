package com.dev.wdpvendas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.dev.wdpvendas.entity.Favorito;
import com.dev.wdpvendas.service.FavoritoService;

import java.util.List;

@RestController
@RequestMapping("/api/favorito")
@CrossOrigin
public class FavoritosController {
    @Autowired
    private FavoritoService favoritoService;

    @GetMapping("/{id}")
    public List<Favorito> buscarTodos(@PathVariable("id") Long pessoa_id){
        return favoritoService.buscarByPersonId(pessoa_id);
    }
/*
    @GetMapping("/{id}")
    public List<Favorito> buscarTodos(){
        return favoritoService.buscarTodos();
    }


    @GetMapping("/{id}")
    public Favorito buscarPorId(@PathVariable("id") Long id){
        return favoritoService.buscarPorId(id);
    }

*/

    @PostMapping("/")
    public Favorito inserir(@RequestBody Favorito objeto){
        return favoritoService.inserir(objeto);
    }

    @PutMapping("/")
    public Favorito alterar(@RequestBody Favorito objeto){
        return favoritoService.alterar(objeto);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> excluir(@PathVariable("id") Long id){
        favoritoService.excluir(id);
        return ResponseEntity.ok().build();
    }
}
