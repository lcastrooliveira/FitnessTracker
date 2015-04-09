package com.pluralsight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pluralsight.model.Projeto;
import com.pluralsight.repository.ProjetoRepository;

@Service
public class ProjetoServiceImpl implements ProjetoService {

	@Autowired
	ProjetoRepository projetoRepository;
	
	@Transactional
	public Projeto add(Projeto projeto) {
		return projetoRepository.save(projeto);
	}
	
	@Transactional
	public Projeto edit(Projeto projeto) {
		return projetoRepository.save(projeto);
	}
	
	@Transactional
	public Long remove(Long id) {
		projetoRepository.delete(id);
		return id;
	}
	
	public List<Projeto> findAll() {
		return projetoRepository.findAll();
	}
}
