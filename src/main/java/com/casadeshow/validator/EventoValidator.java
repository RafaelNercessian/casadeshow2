package com.casadeshow.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.casadeshow.modelo.Evento;

@Component
public class EventoValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return Evento.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {	
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nome", "nome", "Por favor, insira o nome.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "descricao", "descricao", "Por favor, insira a descrição.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "local", "local", "Por favor, insira o local do evento.");	
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "cidade", "cidade", "Por favor, insira a cidade do evento.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "data", "data", "Por favor, insira a data do evento.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "data", "preco","Por favor, insira o preço do evento");
	}

}
