package com.casadeshow.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.casadeshow.modelo.Evento;

@Repository
@Scope(proxyMode = ScopedProxyMode.INTERFACES)
public class EventoDaoImpl implements EventoDao{
	
	
	@PersistenceContext
    private EntityManager manager;


	public List<Evento> listaEventos(){
		TypedQuery<Evento> query = manager.createQuery("select e from Evento e", Evento.class);
		return query.getResultList();
	}
	
	public Evento buscaEvento(Integer id){
		return manager.find(Evento.class, id);
	}

	@Transactional
	public void adiciona(Evento evento) {
		manager.persist(evento);
	}
	
}
