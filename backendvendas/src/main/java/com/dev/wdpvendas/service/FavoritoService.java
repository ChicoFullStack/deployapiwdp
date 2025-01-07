package com.dev.wdpvendas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dev.wdpvendas.entity.Favorito;
import com.dev.wdpvendas.repository.FavoritoRepository;

import java.util.Date;
import java.util.List;

@Service
public class FavoritoService {
    @Autowired
    private FavoritoRepository favoritoRepository;

   public List<Favorito> buscarByPersonId(Long pessoa_id){
        return favoritoRepository.findByPersonId(pessoa_id);
   }
/*
    public List<Favorito> buscarTodos() {
        return favoritoRepository.findAll();
    }

    public Favorito buscarPorId(Long id) {
        Favorito objeto = favoritoRepository.findById(id).get();
        return objeto;
    }
 */
    public Favorito inserir(Favorito objeto) {
        objeto.setCreatedAt(new Date());
        Favorito objetoNovo = favoritoRepository.saveAndFlush(objeto);
        return objetoNovo;
    }

    public Favorito alterar(Favorito objeto) {
        objeto.setUpdatedAt(new Date());
        return favoritoRepository.saveAndFlush(objeto);
    }

    public void excluir(Long id) {
        Favorito objeto = favoritoRepository.findById(id).get();
        favoritoRepository.delete(objeto);
    }
}
