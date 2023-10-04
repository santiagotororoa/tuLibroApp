package com.grupo8.tulibroapp.Controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.grupo8.tulibroapp.Modelos.Autor;
import com.grupo8.tulibroapp.Modelos.Genero;
import com.grupo8.tulibroapp.Modelos.LibroIntercambio;
import com.grupo8.tulibroapp.Modelos.Mensaje;
import com.grupo8.tulibroapp.Modelos.Usuario;
import com.grupo8.tulibroapp.Servicio.ServicioAutor;
import com.grupo8.tulibroapp.Servicio.ServicioGenero;
import com.grupo8.tulibroapp.Servicio.ServicioLibroIntercambio;
import com.grupo8.tulibroapp.Servicio.ServicioUsuario;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/intercambios")
public class ControladorIntercambios {

    @Autowired
    private ServicioUsuario servicioUsuario;

    @Autowired
    private ServicioLibroIntercambio servicioLibroIntercambio;

    @Autowired
    private ServicioAutor servicioAutor;

    @Autowired
    private ServicioGenero servicioGenero;

    @GetMapping("/libros")
    public String lista(@ModelAttribute("mensaje") Mensaje mensaje, Model model, HttpSession session) {
        Long usuarioId = (Long) session.getAttribute("userId");

        if (usuarioId == null) {
            return "redirect:/usuario/login";
        }

        List<Autor> listaFrases = servicioAutor.findAllRandomOrder();
        Usuario usuarioEmail = servicioUsuario.findById(usuarioId);
        List<LibroIntercambio> listalibros = servicioLibroIntercambio.findAllOrderByCreatedAtDesc();
        model.addAttribute("listalibros", listalibros);
        model.addAttribute("usuarioEmail", usuarioEmail);
        model.addAttribute("listaFrases", listaFrases);
        return "intercambios.jsp";
    }

    @GetMapping("/libro/anexar/{usuarioId}")
    public String librosIntercambiosAnexar(@ModelAttribute("libro") LibroIntercambio libro,
            @PathVariable("usuarioId") Long id, HttpSession session, Model model) {
        Long usuarioId = (Long) session.getAttribute("userId");

        if (usuarioId == null) {
            return "redirect:/usuario/login";
        }

        if (id != usuarioId && id == null) {
            return "redirect:/principal";
        } else {
            List<Autor> listaFrases = servicioAutor.findAllRandomOrder();
            Usuario usuarioEmail = servicioUsuario.findById(usuarioId);
            List<Genero> listaGenero = servicioGenero.findAll();
            model.addAttribute("listaFrases", listaFrases);
            model.addAttribute("listaGenero", listaGenero);
            model.addAttribute("usuarioEmail", usuarioEmail);
        }
        List<Autor> listaFrases = servicioAutor.findAllRandomOrder();
        model.addAttribute("listaFrases", listaFrases);
        return "registroIntercambios.jsp";
    }

    @PostMapping("/libro/anexar/{usuarioId}/usuario")
    public String librosIntercambiosAnexados(@Valid @ModelAttribute("libro") LibroIntercambio libro,
            BindingResult result, Model model, RedirectAttributes redirectAttributes, HttpSession session) {
        Long usuarioId = (Long) session.getAttribute("userId");
        if (usuarioId == null) {
            return "redirect:/usuario/login";
        }

        if (result.hasErrors()) {
            List<Autor> listaFrases = servicioAutor.findAllRandomOrder();
            List<Genero> listaGeneros = servicioGenero.findAll();
            List<Autor> listaAutores = servicioAutor.findAll();
            model.addAttribute("listaFrases", listaFrases);
            model.addAttribute("listaGeneros", listaGeneros);
            model.addAttribute("listaAutores", listaAutores);
            return "registroLibros.jsp";
        }

        Usuario usuario = new Usuario();
        usuario.setId(usuarioId);
        libro.setUsuario(usuario);

        redirectAttributes.addFlashAttribute("realizado", "Libro guardado");
        servicioLibroIntercambio.save(libro);
        return "redirect:/intercambios/libro/anexar/" + usuarioId;
    }

    @GetMapping("/{libroId}/editar")
    public String editarlibroIntercambio(@PathVariable("libroId") Long libroId, Model model, HttpSession session) {
        Long usuarioId = (Long) session.getAttribute("userId");
        LibroIntercambio libro = servicioLibroIntercambio.findById(libroId);
        if (usuarioId == null) {
            return "redirect:/usuario/login";
        } else if (usuarioId != libro.getUsuario().getId() && usuarioId != 1) {
            return "redirect:/principal";

        } else {
            List<Autor> listaFrases = servicioAutor.findAllRandomOrder();
            List<Autor> listaAutor = servicioAutor.findAll();
            Usuario usuarioEmail = servicioUsuario.findById(usuarioId);
            List<Genero> listaGenero = servicioGenero.findAll();
            model.addAttribute("listaFrases", listaFrases);
            model.addAttribute("listaAutor", listaAutor);
            model.addAttribute("listaGenero", listaGenero);
            model.addAttribute("libro", libro);
            model.addAttribute("usuarioEmail", usuarioEmail);
            return "editarLibroIntercambio.jsp";
        }

    }

    @PutMapping("/{libroId}/editar")
    public String libroIntercambioEdicion(@Valid @ModelAttribute("libro") LibroIntercambio libro, BindingResult result,
            @PathVariable("libroId") Long libroId, RedirectAttributes redirectAttributes, Model model,
            HttpSession session) {
        Long usuarioId = (Long) session.getAttribute("userId");
        Usuario usuarioEmail = servicioUsuario.findById(usuarioId);
        model.addAttribute("usuarioEmail", usuarioEmail);
        LibroIntercambio editarLibro = servicioLibroIntercambio.findById(libroId);
        List<Autor> listaFrases = servicioAutor.findAllRandomOrder();
        model.addAttribute("listaFrases", listaFrases);

        if (result.hasErrors()) {
            model.addAttribute("libro", libro);
            return "editarLibroIntercambio.jsp";
        }
        LibroIntercambio unicoLibro = servicioLibroIntercambio.findByNombre(libro.getNombre());
        if (unicoLibro != null) {
            unicoLibro.setNombre(libro.getNombre());
        }

        if (editarLibro != null) {

            editarLibro.setNombre(libro.getNombre());
            editarLibro.setDescripcion(libro.getDescripcion());
            editarLibro.setDetallesExtras(libro.getDetallesExtras());
            editarLibro.setAutor(libro.getAutor());
            editarLibro.setGenero(libro.getGenero());

            servicioLibroIntercambio.update(editarLibro);
        }
        redirectAttributes.addFlashAttribute("realizado", "Se actualizo Correctamente");
        return "redirect:/intercambios/" + libroId + "/editar";
    }
}
