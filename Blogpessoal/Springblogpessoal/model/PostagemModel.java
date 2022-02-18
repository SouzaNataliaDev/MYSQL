package com.generation.blogpessoal.model;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "tb_postagens")
public class PostagemModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) //autoincremente
	private Long id;
	
	@NotBlank(message = "O título é obrigatório!")
	@Size(max = 100, message = "O titúlo pode conter até 255 caracteres" )
	private String titulo;
	@NotBlank(message = "Defina um texto:")
	@Size(min = 30, message = "O texto não pode ter menos que 10 caracteres." )
	private String texto;
	
	@UpdateTimestamp
	private LocalDateTime data_nascimento;
//Métodos Get=pegar and Set=incluir;
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public LocalDateTime getData() {
		return data_nascimento;
	}

	public void setData(LocalDateTime data_nascimento) {
		this.data_nascimento = data_nascimento;
	}
}
