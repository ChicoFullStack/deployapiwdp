package com.dev.wdpvendas.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.dev.wdpvendas.entity.Pessoa;
import com.dev.wdpvendas.repository.PessoaRepository;

@Service
public class PessoaGerenciamentoService {

    @Autowired
    private PessoaRepository pessoaRepository;

    @Autowired
    private EmailService emailService;

    @Autowired
    PasswordEncoder passwordEncoder;

    public String solicitarCodigo(String email) {
        Pessoa pessoa = pessoaRepository.findByEmail(email);
        pessoa.setCodigoRecuperacaoSenha(getCodigoRecuperacaoSenha(pessoa.getId()));
        pessoa.setDataEnvioCodigo(new Date());
        pessoaRepository.saveAndFlush(pessoa);
        emailService.enviarEmailTexto(pessoa.getEmail(), "Código de Recuperação de Senha",
                "Olá, o seu código para recuperação de senha é o seguinte: " + pessoa.getCodigoRecuperacaoSenha());
        return "Código Enviado!";
    }

    public String alterarSenha(Pessoa pessoa) {

        Pessoa pessoaBanco = pessoaRepository.findByEmailAndCodigoRecuperacaoSenha(pessoa.getEmail(),
                pessoa.getCodigoRecuperacaoSenha());
        if (pessoaBanco != null) {
            Date diferenca = new Date(new Date().getTime() - pessoaBanco.getDataEnvioCodigo().getTime());
            if (diferenca.getTime() / 1000 < 900) {
                //depois que adicionar o spring security é necessário criptografar a senha!!
                pessoaBanco.setSenha(passwordEncoder.encode(pessoa.getSenha()));
                pessoaBanco.setCodigoRecuperacaoSenha(null);
                pessoaRepository.saveAndFlush(pessoaBanco);
                return "Senha alterada com sucesso!";
            } else {
                return "Tempo expirado, solicite um novo código";
            }
        } else {
            return "Email ou código não encontrado!";
        }
    }

    private String getCodigoRecuperacaoSenha(Long id) {
        DateFormat format = new SimpleDateFormat("ddMMyyyyHHmmssmm");
        return format.format(new Date()) + id;
    }

}
