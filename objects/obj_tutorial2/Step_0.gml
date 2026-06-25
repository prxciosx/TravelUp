temp += delta_time / 1000000;
if (temp >= tempde){
	image_index = 1;
	if (position_meeting(mouse_x,mouse_y,id)){
		if (mouse_check_button_pressed(mb_left)){
			global.pode_click = true;
			instance_destroy();
		}
	}
} else{
	image_index = 0;
}