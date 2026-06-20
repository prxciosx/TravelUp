if (mos_txt){
	if (global.dialogo) {
	    var largura_tela = display_get_gui_width ();
	    var altura_tela = display_get_gui_height();

	    draw_set_color(c_black);
	    draw_rectangle(200, altura_tela - 250, largura_tela - 200, altura_tela - 20, false);
		if (i ==1){
			draw_set_color(c_red);
		} else{
			draw_set_color(c_white);
		}
		draw_set_font(Font1);
		draw_text_ext(250,altura_tela - 200, text[i],-1 , 1500);
		caixa = true;
	} else{
		caixa = false;
	}
}