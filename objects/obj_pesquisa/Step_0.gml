if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left) && !global.ini){
	pesquisa = !pesquisa;
}
if (!position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left) && !global.ini){
	pesquisa = false;
}

if (pesquisa){
	
	
	
	if (keyboard_check_pressed(vk_enter)){
		texto_digitado = "";
		keyboard_string = "";
		url_open("https://redeumgritopelavida.crbnacional.org.br/");
		window_set_fullscreen(false);
	}
	else{
		
		if (string_length(keyboard_string) > limite_de_caracteres){
			keyboard_string = string_copy(keyboard_string, 1, limite_de_caracteres);
		}
		
		texto_digitado = keyboard_string;
	}
}
if (pesquisa && texto_digitado != "" or keyboard_string != ""){
	image_index = 1;
}else{
	image_index = 0;
}