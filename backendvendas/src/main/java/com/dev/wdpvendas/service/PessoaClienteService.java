package com.dev.wdpvendas.service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dev.wdpvendas.PessoaRole;
import com.dev.wdpvendas.dto.PessoaClienteRequestDTO;
import com.dev.wdpvendas.entity.Pessoa;
import com.dev.wdpvendas.repository.PessoaClienteRepository;

import org.springframework.security.crypto.password.PasswordEncoder;

@Service
public class PessoaClienteService {

    @Autowired
    private PessoaClienteRepository pessoaRepository;

    @Autowired
    private EmailService emailService;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    EnderecoService enderecoService;

    public Pessoa buscarPorId(Long id) {
        Pessoa objeto = pessoaRepository.findById(id).get();
        return objeto;
    }

    public Pessoa registrar(PessoaClienteRequestDTO pessoaClienteRequestDTO) {
        //registrar pessoa
        Pessoa pessoa = new PessoaClienteRequestDTO().converter(pessoaClienteRequestDTO);
        //System.out.println(pessoa);
        pessoa.setData_cadastro(new Date());
        pessoa.setRole(PessoaRole.USER);
        System.out.println(pessoa);
        pessoa.setSenha(passwordEncoder.encode(pessoa.getSenha()));
        Pessoa objetoNovo = pessoaRepository.saveAndFlush(pessoa);

        Map<String, Object> proprMap = new HashMap<>();
        proprMap.put("nome", objetoNovo.getNome());
        proprMap.put("mensagem", "O registro na loja foi realizado com sucesso.");
        emailService.enviarEmailTemplate(objetoNovo.getEmail(), "Cadastro na Loja Will ", proprMap);
        return objetoNovo;
    }

    public Pessoa alterar(Pessoa objeto) {
        objeto.setDataAtualizacao(new Date());
        objeto.setRole(PessoaRole.USER);
        return pessoaRepository.saveAndFlush(objeto);
    }

    /*
    public Pessoa alterar(PessoaClienteRequestDTO pessoaClienteRequestDTO){
        Pessoa pessoa = new PessoaClienteRequestDTO().converter(pessoaClienteRequestDTO);
        pessoa.setDataAtualizacao(new Date());
        return pessoaRepository.saveAndFlush(pessoa);
    }

     */

}
