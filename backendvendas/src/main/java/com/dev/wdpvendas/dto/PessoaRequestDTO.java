package com.dev.wdpvendas.dto;

import lombok.Data;
import org.springframework.beans.BeanUtils;

import com.dev.wdpvendas.PessoaRole;
import com.dev.wdpvendas.entity.Endereco;
import com.dev.wdpvendas.entity.Pessoa;

@Data
public class PessoaRequestDTO {

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
    private PessoaRole role;
    //private Permissao permissao;
    private Endereco endereco;

    public Pessoa converter(PessoaRequestDTO pessoaRequestDTO){
        Pessoa pessoa = new Pessoa();
        BeanUtils.copyProperties(pessoaRequestDTO, pessoa);
        return pessoa;
    }
}