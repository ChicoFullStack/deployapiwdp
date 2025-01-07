package com.dev.wdpvendas.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.dev.wdpvendas.entity.Favorito;

import java.util.List;

public interface FavoritoRepository extends JpaRepository<Favorito, Long> {

    @Query("select f from Favorito f where f.pessoa_id= ?1")
    List<Favorito> findByPersonId(Long pessoa_id);

}
