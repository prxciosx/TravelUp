if (room == AInicio){
	if (global.ini){
		if (!para){
			tempo += delta_time / 1000000;
				show_debug_message(tempo);
				show_debug_message(temof);
				if (tempo >= temof) {

					var escolha = irandom_range(1,3);

					var largura;
					var altura;
					var pp;

					switch (irandom_range(1, 3)){
						case 1:
							pp = obj_popup1;
							largura = sprite_get_width(spr_popup1);
							altura = sprite_get_height(spr_popup1);
						break;

						case 2:
							pp = obj_popup2;
							largura = sprite_get_width(spr_popup2);
							altura = sprite_get_height(spr_popup2);
						break;

						case 3:
							pp = obj_popup3;
							largura = sprite_get_width(spr_popup3);
							altura = sprite_get_height(spr_popup3);
						break;
					}

					var spawn_x = irandom_range(min_x + 10, max_x - largura);
					var spawn_y = irandom_range(min_y + 10, max_y - altura);

					// cada popup novo fica na frente dos anteriores
					global.popup_depth -= 10;

					var popup = instance_create_depth(
						spawn_x,
						spawn_y,
						global.popup_depth,
						pp
					);
					audio_play_sound(Sound_popup,1,false);

					show_debug_message("foi");

					temof = irandom(6);
					show_debug_message(temof);

					tempo = 0;
				}
	
			show_debug_message(global.pont);
		}
		if (global.pont< -5){
			para = true;
			room_goto(FinalRuim);
		} 

		if (global.pont >= 10){
			para = true;
			room_goto(FinalBom);
		} 
		
	}
}
if (!instance_exists(obj_pointer)){
	instance_create_depth(x,y,-1600,obj_pointer);
}

if (room == FinalBom && !global.passou){
	
	instance_destroy(obj_popup1);
	instance_destroy(obj_popup2);
	instance_destroy(obj_popup3);
	instance_destroy(obj_botao)

	if (!instance_exists(obj_aviao)){
		instance_create_depth(1200,0,1,obj_aviao);
		audio_play_sound(Sound_AirPlane,1,false);
	}
}
if (global.passou){
	if (!instance_exists(obj_finalB)){
		instance_create_depth(960,540,1,obj_finalB);
	}
}

if (room == FinalRuim){

	
	instance_destroy(obj_popup1);
	instance_destroy(obj_popup2);
	instance_destroy(obj_popup3);
	instance_destroy(obj_botao)
	
	var tempom = 5;
	var tempot = 15;
	var tempocc = 20; 
	tempop += delta_time / 1000000;
	if (tempop >= tempom){
		if (!instance_exists(obj_finalB)){
			instance_create_depth(960,540,1,obj_finalB);
		}
	}
	if (tempop >= tempot){
		if (instance_exists(obj_finalB)){
			obj_botaoFb.text = "O tráfico humano afeta milhões de pessoas, mas muitos casos permanecem invisíveis.";
		}
	}
	if (tempop > tempocc){
		if (instance_exists(obj_finalB)){
			obj_botaoFb.text = "Você Sempre Pode Tentar Novamente. Cuidado Com Oportunidades Boas De Mais";
			global.mudadecor = true;
		}
		global.ok = true;
	}
}