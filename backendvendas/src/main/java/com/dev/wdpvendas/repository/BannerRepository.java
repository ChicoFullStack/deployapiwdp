package com.dev.wdpvendas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.wdpvendas.entity.Banner;

public interface BannerRepository extends JpaRepository<Banner, Long> {
}
