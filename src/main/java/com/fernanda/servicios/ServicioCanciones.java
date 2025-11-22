package com.fernanda.servicios;

import com.fernanda.modelos.Cancion;
import com.fernanda.repositorios.RepositorioCanciones;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ServicioCanciones {

    @Autowired
    private RepositorioCanciones repositorio;

    public List<Cancion> obtenerTodasLasCanciones() {
        return repositorio.findAll();
    }

    public Cancion obtenerCancionPorId(Long id) {
        return repositorio.findById(id).orElse(null);
    }
    
    public void guardarCancion(Cancion cancion) {
    repositorio.save(cancion);
}
    public Cancion actualizaCancion(Cancion cancion) {
        return repositorio.save(cancion);
    }
public void eliminaCancion(Long idCancion) {
    repositorio.deleteById(idCancion);
}

}