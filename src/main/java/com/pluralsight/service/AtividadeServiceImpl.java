package com.pluralsight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pluralsight.model.Atividade;
import com.pluralsight.repository.AtividadeRepository;

@Service
public class AtividadeServiceImpl {
	
	@Autowired
	AtividadeRepository atividadeRepository;

	@Transactional
	public Atividade add(Atividade atividade) {
		return atividadeRepository.save(atividade);
	}
	
	@Transactional
	public Atividade edit(Atividade atividade) {
		return atividadeRepository.save(atividade);
	}
	
	@Transactional
	public Long remove(Long id) {
		atividadeRepository.delete(id);
		return id;
	}
	
	public List<Atividade> findAll() {
		return atividadeRepository.findAll();		
	}
	
}
