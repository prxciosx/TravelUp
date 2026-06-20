if (global.pode_click){
	if (position_meeting(mouse_x,mouse_y,id) && mouse_check_button(mb_left)){
		game_end();
	}
}