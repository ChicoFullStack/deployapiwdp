package com.dev.wdpvendas.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dev.wdpvendas.entity.Pessoa;
import com.dev.wdpvendas.security.JwtUtil;
import com.dev.wdpvendas.service.PessoaGerenciamentoService;

@RestController
@RequestMapping("/api/pessoa-gerenciamento")
@CrossOrigin
public class PessoaGerenciamentoController {

   @Autowired
   private PessoaGerenciamentoService pessoaGerenciamentoService;

   @Autowired
   private JwtUtil jwtUtil;

   @Autowired
   AuthenticationManager authenticationManager;

   @PostMapping("/senha-codigo")
   public String recuperarCodigo(@RequestBody Pessoa pessoa) {
      return pessoaGerenciamentoService.solicitarCodigo(pessoa.getEmail());
   }

   @PostMapping("/senha-alterar")
   public String alterarSenha(@RequestBody Pessoa pessoa) {
      return pessoaGerenciamentoService.alterarSenha(pessoa);
   }

   @PostMapping("/login")
   public ResponseEntity<?> login(@RequestBody Pessoa pessoa) {
      //System.out.println(pessoa);
      Authentication authentication = authenticationManager
            .authenticate(new UsernamePasswordAuthenticationToken(pessoa.getEmail(), pessoa.getSenha()));
      SecurityContextHolder.getContext().setAuthentication(authentication);
      Pessoa autenticado = (Pessoa) authentication.getPrincipal();
      //System.out.println(autenticado.getAuthorities());
      String token = jwtUtil.gerarTokenUsername(autenticado);
      //System.out.println(token);
      HashMap<String, Object> map = new HashMap<>();
      map.put("token", token);
      map.put("nivel_acesso", autenticado.getAuthorities().toString());
      System.out.println(map);
      return ResponseEntity.ok(map);

   }

}