package com.pluralsight.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pluralsight.model.Atividade;

@Repository
public interface AtividadeRepository extends JpaRepository<Atividade, Long> {}
