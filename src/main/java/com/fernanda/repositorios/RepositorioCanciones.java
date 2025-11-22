package com.fernanda.repositorios;

import com.fernanda.modelos.Cancion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepositorioCanciones extends JpaRepository<Cancion, Long> {
}