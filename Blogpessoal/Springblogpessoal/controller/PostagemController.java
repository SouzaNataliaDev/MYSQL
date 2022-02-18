package com.generation.blogpessoal.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.generation.blogpessoal.model.PostagemModel;
import com.generation.blogpessoal.repository.PostagemRepository;

@RestController
@RequestMapping("/postagens")
@CrossOrigin(origins = "*", allowedHeaders = "*") /* comunicação entre o front o back */
public class PostagemController {

	@Autowired
	private PostagemRepository postagemRepository;

	@GetMapping
	public ResponseEntity<List<PostagemModel>> getAll() {
		return ResponseEntity.ok(postagemRepository.findAll());
		// select * from tb_postagens
	}

	@GetMapping("/{id}")
	public ResponseEntity<PostagemModel> getById(@PathVariable Long id) {
		return postagemRepository.findById(id).map(resposta -> ResponseEntity.ok(resposta))
				.orElse(ResponseEntity.notFound().build());
	}

	@GetMapping("/titulo/{titulo}")
	public ResponseEntity<List<PostagemModel>> getByTitulo(@PathVariable String titulo) {
		return ResponseEntity.ok(postagemRepository.findAllByTituloContainingIgnoreCase(titulo));

	}
//Salvando itens na lista;
	@PostMapping
	public ResponseEntity<PostagemModel> postPostagem(@Valid @RequestBody PostagemModel postagem){
		return ResponseEntity.status(HttpStatus.CREATED)
				.body(postagemRepository.save(postagem));
	}
	//Atualizando dados da lista
	@PutMapping
	public ResponseEntity<PostagemModel> putPostagem (@Valid @RequestBody PostagemModel postagem){
		return ResponseEntity.status(HttpStatus.OK)
				.body(postagemRepository.save(postagem));
	}
	@DeleteMapping("/{id}")
	public void deletePostagem(@PathVariable Long id) {
		Optional<PostagemModel> postagem = postagemRepository.findById(id);
		if (postagem.isEmpty())
			throw new ResponseStatusException(HttpStatus.NOT_FOUND);
		postagemRepository.deleteById(id);
		
	}
	
}
