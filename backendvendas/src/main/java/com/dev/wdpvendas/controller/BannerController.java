package com.dev.wdpvendas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.dev.wdpvendas.entity.Banner;
import com.dev.wdpvendas.service.BannerService;

import java.util.List;

@RestController
@RequestMapping("/api/banner")
@CrossOrigin
public class BannerController {
    @Autowired
    private BannerService bannerService;

    @GetMapping("/")
    public List<Banner> buscarTodos(){
        return bannerService.buscarTodos();
    }

    @GetMapping("/{id}")
    public Banner buscarPorId(@PathVariable("id") Long id){
        return bannerService.buscarPorId(id);
    }

    @PostMapping("/")
    public Banner inserir(@RequestBody Banner objeto){
        return bannerService.inserir(objeto);
    }

    @PutMapping("/")
    public Banner alterar(@RequestBody Banner objeto){
        return bannerService.alterar(objeto);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> excluir(@PathVariable("id") Long id){
        bannerService.excluir(id);
        return ResponseEntity.ok().build();
    }
}
