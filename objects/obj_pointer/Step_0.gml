x = mouse_x;
y = mouse_y;

if (mouse_check_button_pressed(mb_left)){
	audio_play_sound(Sound_click,0,false);
}