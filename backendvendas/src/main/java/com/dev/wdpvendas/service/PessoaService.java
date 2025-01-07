package com.dev.wdpvendas.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.dev.wdpvendas.dto.PessoaRequestDTO;
import com.dev.wdpvendas.entity.Pessoa;
import com.dev.wdpvendas.repository.PessoaRepository;

@Service
public class PessoaService {

    @Autowired
    private PessoaRepository pessoaRepository;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    EnderecoService enderecoService;

    public List<Pessoa> buscarTodos() {
        return pessoaRepository.findAll();
    }

    public Pessoa buscarPorId(Long id) {
        Pessoa objeto = pessoaRepository.findById(id).get();
        return objeto;
    }

    public Pessoa inserir(PessoaRequestDTO pessoaRequestDTO) {
        Pessoa pessoa = new PessoaRequestDTO().converter(pessoaRequestDTO);
        System.out.println(pessoaRequestDTO);
        pessoa.setData_cadastro(new Date());
        pessoa.setSenha(passwordEncoder.encode(pessoa.getSenha()));
        Pessoa objetoNovo = pessoaRepository.saveAndFlush(pessoa);

        return objetoNovo;
    }

    public Pessoa alterar(Pessoa objeto) {
        objeto.setDataAtualizacao(new Date());
        return pessoaRepository.saveAndFlush(objeto);
    }

    public void excluir(Long id) {
        Pessoa objeto = pessoaRepository.findById(id).get();
        pessoaRepository.delete(objeto);
    }
}
