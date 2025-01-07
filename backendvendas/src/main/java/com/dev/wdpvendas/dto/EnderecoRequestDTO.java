package com.dev.wdpvendas.dto;

import lombok.Data;
import org.springframework.beans.BeanUtils;

import com.dev.wdpvendas.entity.Endereco;
import com.dev.wdpvendas.entity.Pessoa;

@Data
public class EnderecoRequestDTO {
    private String cep;
    private String logradouro;
    private String numero;
    private String complemento;
    private String bairro;
    private String cidade;
    private String uf;
    private Pessoa pessoa;

    public Endereco converter(EnderecoRequestDTO enderecoRequestDTO){
        Endereco endereco = new Endereco();
        BeanUtils.copyProperties(enderecoRequestDTO, endereco);
        return endereco;
    }
}
