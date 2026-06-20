if (position_meeting(mouse_x,mouse_y,obj_fechajanela) && mouse_check_button(mb_left)){
	instance_destroy(obj_janela);
	instance_destroy(obj_pesquisa);
	instance_destroy();
}