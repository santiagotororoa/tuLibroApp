package com.grupo8.tulibroapp.Repositorio;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;

import com.grupo8.tulibroapp.Modelos.Autor;
import com.grupo8.tulibroapp.Modelos.Genero;
import com.grupo8.tulibroapp.Modelos.LibroVenta;

public interface RepositorioLibroVenta extends RepositorioBase<LibroVenta> {

    LibroVenta findByNombre(String nombre);

    LibroVenta findByNombreContainingIgnoreCase(String nombre);

    // Consulta Random
    @Query(value = "SELECT * FROM libros_ventas ORDER BY RAND() LIMIT 5", nativeQuery = true)
    List<LibroVenta> findAllRandomOrder();

    Page<LibroVenta> findByGeneroId(Long generoId, Pageable pageable);

    Page<LibroVenta> findByAutorId(Long autorId, Pageable pageable);

    List<LibroVenta> findByAutorIsNull();

    List<LibroVenta> findByAutor(Autor autor);

    List<LibroVenta> findByGeneroIsNull();

    List<LibroVenta> findByGenero(Genero genero);

}
