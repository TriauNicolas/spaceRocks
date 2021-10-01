/// @description Chance powerups

if(irandom_range(0, 5) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup);	
}

// Playing sound

audio_play_sound(snd_die, 1, false);

// Making others asteroids appear depending of the size of the destroyed asteroid

var xx = x;
var yy = y;
if(sprite_index == spr_asteroid_huge) {
	global.cameraShake = 4;
	score += 20
	
	with(obj_particles) {
		part_particles_create(partSys, xx, yy, partTypeAsteroidDebris, 12);	
	}
	repeat(2) {
		var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
		new_asteroid.sprite_index = spr_asteroid_med;
	}
		
} else if(sprite_index == spr_asteroid_med) {
	global.cameraShake = 2;
	score += 10
	
	with(obj_particles) {
		part_particles_create(partSys, xx, yy, partTypeAsteroidDebris, 8);	
	}
	repeat(2) {
		var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
		new_asteroid.sprite_index = spr_asteroid_small;	
	}
		
} else {
	global.cameraShake = 1;
	score += 5
	
	with(obj_particles) {
		part_particles_create(partSys, xx, yy, partTypeAsteroidDebris, 6);	
	}
	instance_destroy();	
}