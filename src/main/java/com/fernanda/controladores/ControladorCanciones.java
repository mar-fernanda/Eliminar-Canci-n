package com.fernanda.controladores;

import com.fernanda.servicios.ServicioCanciones;
import com.fernanda.modelos.Cancion;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class ControladorCanciones {

    @Autowired
    private ServicioCanciones servicio;

    @GetMapping("/")
    public String homeRedirect() {
        return "redirect:/canciones";
    }

    @GetMapping("/canciones")
    public String desplegarCanciones(Model model) {
        model.addAttribute("listaCanciones", servicio.obtenerTodasLasCanciones());
        model.addAttribute("cancion", new Cancion()); 
        return "canciones";
    }

    @GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable("idCancion") Long idCancion, Model model) {
        Cancion cancion = servicio.obtenerCancionPorId(idCancion);
        model.addAttribute("cancion", cancion);
        return "detalleCancion";
    }

    @GetMapping("/canciones/formulario/agregar")
    public String formularioAgregarCancion(Model model) {
        model.addAttribute("cancion", new Cancion());
        return "agregarCancion";
    }
    
    @PostMapping("/canciones/procesa/agregar")
    public String procesarAgregarCancion(@Valid @ModelAttribute Cancion cancion,
                                        BindingResult result,
                                        Model model) {
        if (result.hasErrors()) {
            return "agregarCancion";
        }
        servicio.guardarCancion(cancion);
        return "redirect:/canciones";
    }

    @GetMapping("/canciones/agregar")
public String mostrarFormulario(Model model) {
    model.addAttribute("cancion", new Cancion());
    return "agregarCancion";
}

@GetMapping("/canciones/formulario/editar/{idCancion}")
public String formularioEditarCancion(@PathVariable("idCancion") Long idCancion, Model model) {
    Cancion cancion = servicio.obtenerCancionPorId(idCancion);
    model.addAttribute("cancion", cancion);
    return "editarCancion";
}

@PutMapping("/canciones/procesa/editar/{idCancion}")
public String procesarEditarCancion(@PathVariable("idCancion") Long idCancion,
                                    @Valid @ModelAttribute("cancion") Cancion cancion,
                                    BindingResult result,
                                    Model model) {
    if (result.hasErrors()) {
        return "editarCancion";
    }
    cancion.setId(idCancion);
    servicio.actualizaCancion(cancion);
    return "redirect:/canciones";
}
@DeleteMapping("/canciones/eliminar/{idCancion}")
public String procesarEliminarCancion(@PathVariable("idCancion") Long idCancion) {
    servicio.eliminaCancion(idCancion);
    return "redirect:/canciones";
}
}
