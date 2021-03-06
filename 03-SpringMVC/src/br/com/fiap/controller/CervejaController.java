package br.com.fiap.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.dao.CervejaDAO;
import br.com.fiap.model.Cerveja;

@Controller
@RequestMapping("/cerveja")
public class CervejaController {
	
	@Autowired //Inje��o de depend�ncia
	private CervejaDAO dao;
	//private static List<Cerveja> lista = new ArrayList<>();
	//Abrir a tela com o formulario
	@GetMapping("cadastrar")
	public String abrirForm(){
		return "cerveja/cadastrar";
	}
	
	@Transactional
	@PostMapping(value="cadastrar")
	public ModelAndView processarForm(Cerveja cerveja){
		dao.cadastrar(cerveja);
		ModelAndView retorno = new ModelAndView("cerveja/sucesso");
		retorno.addObject("cerv", cerveja);
		return retorno;
	}
	
	//Listagem
	@GetMapping("listar")
	public ModelAndView listagem(){
		ModelAndView retorno = new ModelAndView("cerveja/lista");
		retorno.addObject("lista", dao.listar());
		return retorno;
	}
}
