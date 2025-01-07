package com.dev.wdpvendas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dev.wdpvendas.dto.EnderecoRequestDTO;
import com.dev.wdpvendas.entity.Endereco;
import com.dev.wdpvendas.repository.EnderecoRepository;

import java.util.Date;
import java.util.List;

@Service
public class EnderecoService {
    @Autowired
    private EnderecoRepository enderecoRepository;

    public List<Endereco> buscarTodos() {
        return enderecoRepository.findAll();
    }

    public Endereco buscarPorId(Long id) {
        Endereco objeto = enderecoRepository.findById(id).get();
        return objeto;
    }

    public Endereco registrar(EnderecoRequestDTO enderecoRequestDTO) {
        System.out.println(enderecoRequestDTO);
        Endereco endereco = new EnderecoRequestDTO().converter(enderecoRequestDTO);
        endereco.setDataCriacao(new Date());
        Endereco objetoNovo = enderecoRepository.saveAndFlush(endereco);
        return endereco;
    }

    public Endereco registrarFromCadastro(Endereco endereco) {
        Endereco objetoNovo = enderecoRepository.saveAndFlush(endereco);
        return endereco;
    }

    public Endereco alterar(Endereco objeto) {
        objeto.setDataAtualizacao(new Date());
        return enderecoRepository.saveAndFlush(objeto);
    }

    public void excluir(Long id) {
        Endereco objeto = enderecoRepository.findById(id).get();
        enderecoRepository.delete(objeto);
    }

}
