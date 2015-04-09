package com.pluralsight.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="projetos")
public class Projeto {

	public Projeto() {}
	
	@Id
	@GeneratedValue	
	private Long id;
	
	private String descricao;
		
	private String nome;
	
	private String responsavel;
	
	@OneToMany(mappedBy="projeto",cascade=CascadeType.ALL, fetch=FetchType.EAGER)	
	private List<Atividade> atividades = new ArrayList<Atividade>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}
}
