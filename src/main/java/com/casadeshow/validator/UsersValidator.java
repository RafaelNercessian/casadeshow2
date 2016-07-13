package com.casadeshow.validator;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.casadeshow.dao.UsersDao;
import com.casadeshow.modelo.Users;

@Component
public class UsersValidator implements Validator {
	
	@Autowired
	private UsersDao dao;

	public boolean supports(Class<?> clazz) {
		return Users.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		
		Users users=(Users) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "username", "O nome do usuário deve ser preenchido!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "password", "A senha deve ser preenchida!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email", "O e-mail deve ser preenchido!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nome", "nome", "O nome deve ser preenchido!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sobrenome", "sobrenome", "O sobrenome deve ser preenchido!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "cpf", "cpf", "O CPF deve ser preenchido!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "endereco", "endereco", "O endereço deve ser preenchido!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "numero", "numero","O número da casa deve ser preenchido!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "cep", "cep","O CEP deve ser preenchido!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "telefone", "telefone","O telefone deve ser preenchido!");
	
        List<Users> listaDeUsernamesCadastrados=dao.listaDeUsernames();
        
        if(listaDeUsernamesCadastrados.contains(users.getUsername())){
        	errors.rejectValue("username", "username", "Esse nome de usuário já existe, por favor escolha outro!");
        }
        
        if(!users.getCpf().matches("^[0-9]*$")){
        	errors.rejectValue("cpf", "cpf", "O campo CPF só aceita números");
        }
        
        if(!users.getCep().matches("^[0-9]*$")){
        	errors.rejectValue("cep", "cep", "O campo CEP só aceita números");
        }
        
        if(!users.getNumero().matches("^[0-9]*$")){
        	errors.rejectValue("numero", "numero", "O campo número da casa só aceita números");
        }
        
        if(!users.getTelefone().matches("^[0-9]*$")){
        	errors.rejectValue("telefone", "telefone", "O campo número da casa só aceita números");
        }
        
	}

}
