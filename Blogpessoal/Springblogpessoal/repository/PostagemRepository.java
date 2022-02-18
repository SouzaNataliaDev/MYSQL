package com.generation.blogpessoal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.generation.blogpessoal.model.PostagemModel;

public interface PostagemRepository extends JpaRepository<PostagemModel, Long> {
	List<PostagemModel> findAllByTituloContainingIgnoreCase(String titulo);
	//select * from tb_postagens where titulo like %titulo%;
	}
