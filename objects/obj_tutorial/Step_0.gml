if (!mos_txt){
	tempop += delta_time / 1000;
}
if (tempop >= tempo){
	mos_txt = true;
}

if (mouse_check_button_pressed(mb_left)) {

	// pausa no ponto 1 (evento especial)
	if (i == 1 && !instance_exists(obj_janela)) {
		inter = true;
		global.dialogo = false;
		global.pode_click = true;
		exit;
	}

	// se estiver em interação, não avança
	if (inter) {
		global.dialogo = false;
		exit;
	}

	// se está na última fala -> só fecha no clique
	if (i == array_length(text) - 1) {
		global.dialogo = false;
		exit;
	}

	// avança normalmente
	i++;

	if (i >= array_length(text)) {
		i = array_length(text) - 1;
	}
}

if (instance_exists(obj_janela) && !verific) {
	i++
	verific = true
	if (i >= array_length(text)) {
		i = array_length(text) - 1;
	}
	inter = false;
	global.dialogo = true;
}