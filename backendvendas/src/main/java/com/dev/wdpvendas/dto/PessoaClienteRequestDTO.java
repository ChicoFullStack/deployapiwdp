package com.dev.wdpvendas.dto;

import org.springframework.beans.BeanUtils;

import com.dev.wdpvendas.PessoaRole;
import com.dev.wdpvendas.entity.Endereco;
import com.dev.wdpvendas.entity.Pessoa;

import lombok.Data;


@Data
public class PessoaClienteRequestDTO {

    private String nome;
    private String cpf;
    private String email;
    private String senha;
    private String genero;
    private String avatar;
    private String data_nasc;
    private String celular;
    private String tel_fixo;
    //private String nivel_acesso;
    private Endereco endereco;
    private PessoaRole role;

    public Pessoa converter(PessoaClienteRequestDTO pessoaClienteRequestDTO){
        Pessoa pessoa = new Pessoa();
        BeanUtils.copyProperties(pessoaClienteRequestDTO, pessoa);
        return pessoa;
    }
}
