package br.com.fiap.controller;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.model.Cerveja;

@Controller
@RequestMapping("/cerveja")
public class CervejaController {
	private static ArrayList<Cerveja> lista = new ArrayList<>();
	//Abrir a tela com o formulario
	@GetMapping("cadastrar")
	public String abrirForm(){
		return "cerveja/cadastrar";
	}
	
	@PostMapping(value="cadastrar")
	public ModelAndView processarForm(Cerveja cerveja){
		lista.add(cerveja);
		ModelAndView retorno = new ModelAndView("cerveja/sucesso");
		retorno.addObject("cerv", cerveja);
		return retorno;
	}
	
	//Listagem
}
