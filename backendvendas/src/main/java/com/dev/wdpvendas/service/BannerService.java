package com.dev.wdpvendas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dev.wdpvendas.entity.Banner;
import com.dev.wdpvendas.repository.BannerRepository;

import java.util.Date;
import java.util.List;

@Service
public class BannerService {
    @Autowired
    private BannerRepository bannerRepository;

    public List<Banner> buscarTodos() {
        return bannerRepository.findAll();
    }

    public Banner buscarPorId(Long id) {
        Banner objeto = bannerRepository.findById(id).get();
        return objeto;
    }

    public Banner inserir(Banner objeto) {
        objeto.setDataCriacao(new Date());
        Banner objetoNovo = bannerRepository.saveAndFlush(objeto);
        return objetoNovo;
    }

    public Banner alterar(Banner objeto) {
        objeto.setDataAtualizacao(new Date());
        return bannerRepository.saveAndFlush(objeto);
    }

    public void excluir(Long id) {
        Banner objeto = bannerRepository.findById(id).get();
        bannerRepository.delete(objeto);
    }
}
