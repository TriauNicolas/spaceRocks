/// @description Take Damage

audio_play_sound(snd_die, 1, false);
instance_destroy();

// Making others asteroids appear depending of the size of the destroyed asteroid
	
if(sprite_index == spr_asteroid_huge) {
		
	score += 20
		
	repeat(2) {
		var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
		new_asteroid.sprite_index = spr_asteroid_med;
	}
		
} else if(sprite_index == spr_asteroid_med) {
		
	score += 10
		
	repeat(2) {
		var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
		new_asteroid.sprite_index = spr_asteroid_small;	
	}
		
} else {
		
	score += 5
		
	instance_destroy();	
}
	
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);	
}