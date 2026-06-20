if (global.pode_click){
	if (position_meeting(mouse_x,mouse_y,id)){
		if (mouse_check_button_pressed(mb_left)){
			instance_create_depth(0,0,20,obj_janela);
			instance_create_depth(0,0,20,obj_fechajanela);
			instance_create_depth(0,0,19,obj_pesquisa);
		
		}
	}
	if (instance_exists(obj_janela) && y<900){
		sumir = true;
	} else{
		sumir = false;
	}
}