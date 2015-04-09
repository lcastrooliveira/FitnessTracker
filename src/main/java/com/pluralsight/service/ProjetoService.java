package com.pluralsight.service;

import java.util.List;

import com.pluralsight.model.Projeto;

public interface ProjetoService {

	Projeto add(Projeto projeto);

	Projeto edit(Projeto projeto);

	Long remove(Long id);

	List<Projeto> findAll();

}