if (pontu == -1){
	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id)){
		global.erros ++;
	}
} else{
	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id)){
		global.acertos ++;
	} 
}

if (position_meeting(mouse_x,mouse_y,id)){
	if (mouse_check_button_pressed(mb_left)){
		global.pont += pontu;
			if (instance_exists(dono)){
				with (dono){
					instance_destroy();
				}
			}
		instance_destroy();
	}
}