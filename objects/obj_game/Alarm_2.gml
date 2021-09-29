/// @description Creating Enemies & music

	scr_spawn_off_camera(obj_asteroid, 80);
	
	scr_spawn_off_camera(obj_raider, 8);
	scr_spawn_off_camera(obj_brute, 4);
	scr_spawn_off_camera(obj_hunter, 5);

	
	if(audio_is_playing(msc_song)) {
		audio_stop_sound(msc_song);	
	}
	audio_play_sound(msc_song, 2, true);
	
	alarm[0] = 60;