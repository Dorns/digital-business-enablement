package br.com.fiap.bean;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Calendar;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import org.primefaces.event.FileUploadEvent;
import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

import br.com.fiap.bo.ClienteBO;
import br.com.fiap.entity.Cliente;
import br.com.fiap.exception.DBException;

@ManagedBean
@SessionScoped
public class ClienteBean {

	private Cliente cliente;
	
	private ClienteBO bo;
	
	private StreamedContent foto;
	
	@PostConstruct
	private void init(){
		cliente = new Cliente();
		cliente.setDataNascimento(Calendar.getInstance());
		bo = new ClienteBO();
	}
	
	public String cadastrar(){
		FacesMessage msg;
		try {
			if (cliente.getCodigo() == 0){
				bo.cadastrar(cliente);
				msg = new FacesMessage("Cadastrado!");
			}else{
				bo.atualizar(cliente);
				msg = new FacesMessage("Atualizado!");
			}
		} catch (DBException e) {
			e.printStackTrace();
			msg = new FacesMessage("Erro!");
		}
		FacesContext.getCurrentInstance().addMessage(null, msg);
		FacesContext.getCurrentInstance().getExternalContext()
			.getFlash().setKeepMessages(true);
		return "cliente?faces-redirect=true";
	}
	
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	public void uploadFile(FileUploadEvent event){
		//Recuperar o nome do arquivo
		String arquivo = event.getFile().getFileName();
		try {
			//Criar o arquivo no servidor
			File file = new File("C:\\fotos\\",arquivo);
			//Gravar o conte�do no arquivo
			FileOutputStream stream = new FileOutputStream(file);
			stream.write(event.getFile().getContents());
			stream.close();
			cliente.setFoto(arquivo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public StreamedContent getFoto(){
		DefaultStreamedContent content = new DefaultStreamedContent();
		content.setContentType("image/jpg");
		try{
			if(FacesContext.getCurrentInstance().getRenderResponse() || cliente.getFoto() == null){
				content.setStream(new FileInputStream("C:\\fotos\\sem-foto.jpg"));
			}else{
				content.setStream(new FileInputStream("C:\\fotos\\" + cliente.getFoto()));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return content;
	}
}
