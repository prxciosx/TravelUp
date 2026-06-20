if (!global.ini){
	if (position_meeting(mouse_x,mouse_y,obj_janela)){
		image_index = 1;
		if (mouse_check_button(mb_left)){
			global.ini = true;
		}
	}else{
		image_index = 0;
	}
} else{
	image_index = 0;
}