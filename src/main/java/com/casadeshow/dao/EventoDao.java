package com.casadeshow.dao;

import java.util.List;

import com.casadeshow.modelo.Evento;

public interface EventoDao {
	List<Evento> listaEventos();
	Evento buscaEvento(Integer id);
	void adiciona(Evento evento);
	void remove(Integer id);
	List<Evento> procuraEventos(String palavra);
}
