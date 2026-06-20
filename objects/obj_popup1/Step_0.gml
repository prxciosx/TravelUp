if (position_meeting(mouse_x,mouse_y,id)){
	if (mouse_check_button_pressed(mb_left)){
		
		if (instance_exists(meu_botao)) {
            with (meu_botao) {
                instance_destroy();
            }
        }
		
		instance_destroy();
	};

}