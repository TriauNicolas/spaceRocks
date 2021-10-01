lives -= 1;

with(obj_game) {
	alarm[1] = room_speed;
}

audio_play_sound(snd_die, 1, false);

instance_destroy();

var xx = x;
var yy = y;
var ib = image_blend;

with(obj_particles) {
	part_particles_create_colour(partSys, xx, yy, partTypeShipDebris, ib, 10);	
}