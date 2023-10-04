package com.grupo8.tulibroapp.Controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.grupo8.tulibroapp.Modelos.Autor;
import com.grupo8.tulibroapp.Modelos.LibroVenta;
import com.grupo8.tulibroapp.Modelos.Usuario;
import com.grupo8.tulibroapp.Servicio.ServicioAutor;
import com.grupo8.tulibroapp.Servicio.ServicioLibroVenta;
import com.grupo8.tulibroapp.Servicio.ServicioUsuario;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ControladorListaDeseo {

    @Autowired
    private ServicioAutor servicioAutor;

    @Autowired
    private ServicioUsuario servicioUsuario;

    @Autowired
    private ServicioLibroVenta servicioLibroVenta;

    @GetMapping("/lista_deseos/{usuarioId}")
    public String mostrarUsuario(@PathVariable("usuarioId") Long id, Model model, HttpSession session) {
        Long usuarioId = (Long) session.getAttribute("userId");
        List<Autor> listaFrases = servicioAutor.findAllRandomOrder();
        model.addAttribute("listaFrases", listaFrases);
        if (usuarioId == null || usuarioId == 1) {
            return "redirect:/usuario/login";
        } else if (id != usuarioId) {
            return "redirect:/lista_deseos/" + usuarioId;
        } else {
            Usuario usuarioEmail = servicioUsuario.findById(id);
            model.addAttribute("usuarioEmail", usuarioEmail);
            return "mostrarListaDeseo.jsp";
        }
    }

    @PostMapping("/lista_deseos/anexar_libro/{libroId}")
    public String agregarLibro_ListaDeseos(@PathVariable("libroId") Long LibroId,
            HttpSession session, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        Long usuarioId = (Long) session.getAttribute("userId");
        if (usuarioId == null || usuarioId == 1) {
            return "redirect:/usuario/login";
        }
        Usuario usuario = servicioUsuario.findById(usuarioId);
        LibroVenta libro = servicioLibroVenta.findById(LibroId);
        if (usuario.getLibroVenta().contains(libro)) {
            redirectAttributes.addFlashAttribute("agragadoInvalido", "este libro ya se encuentra en su carrito");
            String referer = request.getHeader("referer");
            return "redirect:" + referer;
        } else {
            usuario.agregarLibro(libro);
            servicioLibroVenta.save(libro);
            return "redirect:/lista_deseos/" + usuarioId;
        }
    }

    @PostMapping("/lista_deseos/quitarLibro/{libroId}")
    public String quitarLibro_ListaDeseos(@PathVariable("libroId") Long LibroId,
            HttpSession session) {
        Long usuarioId = (Long) session.getAttribute("userId");
        Usuario usuario = servicioUsuario.findById(usuarioId);

        LibroVenta libro = servicioLibroVenta.findById(LibroId);
        usuario.quitarLibro(libro);
        servicioLibroVenta.save(libro);

        return "redirect:/lista_deseos/" + usuarioId;
    }
}