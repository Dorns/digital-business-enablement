package br.com.fiap.dao.impl;

import org.springframework.stereotype.Repository;

import br.com.fiap.dao.PetiscoDAO;
import br.com.fiap.model.Petisco;

@Repository
public class PetiscoDAOImpl 
		extends GenericDAOImpl<Petisco, Integer> implements PetiscoDAO{

}
