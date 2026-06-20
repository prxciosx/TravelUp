if (room != FinalRuim){
	if (room == Menu){
		audio_play_sound(Sound_Normal,1,true);
	}
	global.ok = true;
} else{
	audio_play_sound(Sound_Torcida,1,true);
	global.ok = false;
}