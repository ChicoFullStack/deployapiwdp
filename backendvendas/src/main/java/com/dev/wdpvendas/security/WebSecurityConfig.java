package com.dev.wdpvendas.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig {

    private static final String[] WHITE_LIST_URL = { "/api/v1/auth/**", "/v2/api-docs", "/v3/api-docs",
                        "/v3/api-docs/**", "/swagger-resources", "/swagger-resources/**", "/configuration/ui",
                        "/configuration/security", "/swagger-ui/**", "/webjars/**", "/swagger-ui.html", "/api/auth/**",
                        "/api/test/**", "/authenticate" };

    @Autowired
	private AuthEntryPointJwt unauthorizedHandler;

@Bean
public AuthFilterToken authFilterToken(){
    return new AuthFilterToken();
}

@Bean
public PasswordEncoder passwordEncoder(){
    return new BCryptPasswordEncoder();
}

@Bean
public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration)throws Exception{
    return authenticationConfiguration.getAuthenticationManager();
}


@Bean
public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
    http
            .cors(cors -> cors.disable())
            .csrf(csrf -> csrf.disable())
            .exceptionHandling(handling -> handling.authenticationEntryPoint(unauthorizedHandler))
            .sessionManagement(management -> management.sessionCreationPolicy(SessionCreationPolicy.STATELESS)).
            authorizeHttpRequests(requests -> requests
            .requestMatchers("/api/pessoa-gerenciamento/**").permitAll()

            //.antMatchers(HttpMethod.GET,"/api/pedido/**").hasAuthority("ROLE_ADMIN")

            .requestMatchers(HttpMethod.POST, "/api/marca/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers(HttpMethod.PUT, "/api/marca/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers(HttpMethod.DELETE, "/api/marca/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers(HttpMethod.GET, "/api/marca/**").permitAll()

            .requestMatchers(HttpMethod.POST, "/api/categoria/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers(HttpMethod.PUT, "/api/categoria/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers(HttpMethod.DELETE, "/api/categoria/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers(HttpMethod.GET, "/api/categoria/**").permitAll()

            .requestMatchers(HttpMethod.POST, "/api/cliente/**").permitAll()
            //.requestMatchers(HttpMethod.GET,"/api/cliente/**").hasAuthority("ROLE_USER")

            .requestMatchers(HttpMethod.GET, "/api/produto/**").permitAll()
            .requestMatchers(HttpMethod.POST, "/api/produto/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers(HttpMethod.PUT, "/api/produto/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers(HttpMethod.DELETE, "/api/produto/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers(HttpMethod.GET, "/api/banner/**").permitAll()
            .requestMatchers(HttpMethod.POST, "/api/banner/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers(HttpMethod.PUT, "/api/banner/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers(HttpMethod.DELETE, "/api/banner/**").hasAuthority("ROLE_ADMIN")
            .requestMatchers("/api/pessoa/**").hasAuthority("ROLE_ADMIN")

            .requestMatchers(WHITE_LIST_URL).permitAll()

            .anyRequest().authenticated());

        http.addFilterBefore(authFilterToken(), UsernamePasswordAuthenticationFilter.class);

    return http.build();
}

    
}
