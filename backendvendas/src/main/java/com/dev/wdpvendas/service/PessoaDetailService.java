package com.dev.wdpvendas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dev.wdpvendas.entity.Pessoa;
import com.dev.wdpvendas.repository.PessoaRepository;

@Service
public class PessoaDetailService implements UserDetailsService{

    @Autowired
    private PessoaRepository pessoaRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Pessoa pessoa = pessoaRepository.findByEmail(username);
        if(pessoa==null){
            throw new UsernameNotFoundException("Pessoa não encontrada pelo email");
        }
        return pessoa;
    }
    
}
