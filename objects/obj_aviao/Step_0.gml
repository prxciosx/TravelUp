var spd = 5;

x-=spd;

if (bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height) {
    global.passou = true;
	instance_destroy(); // Exemplo: Destrói o objeto
}
