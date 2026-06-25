if (global.ini && room == AInicio){
	draw_sprite(spr_coin,0,1780,970);
	
	draw_set_color(c_black);
	draw_set_font(Font1);
	draw_text(1840,980,string(global.pont) + "/10");
}