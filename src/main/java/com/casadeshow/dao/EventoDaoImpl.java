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
		if(evento.getId()==null)
			manager.persist(evento);
		else
			manager.merge(evento);
	}

	@Transactional
	public void remove(Integer id) {
		Evento eventoParaDeletar = manager.find(Evento.class, id);
		manager.remove(eventoParaDeletar);
	}

	public List<Evento> procuraEventos(String palavra){
		TypedQuery<Evento> query = manager.createQuery("select e from Evento e where e.nome like:palavra"
				+ " or e.descricao like:palavra or e.local like:palavra or e.cidade like:palavra"
							, Evento.class);
		query.setParameter("palavra", "%"+palavra+"%");
		return query.getResultList();
	}
}
