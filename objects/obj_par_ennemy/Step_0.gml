// Particles creating
exhaustCounter++
if(exhaustCounter >= 4) {
	exhaustCounter = 0;
	var heightLen = sprite_height * 0.4;
	var _xx = x - lengthdir_x(heightLen, image_angle);
	var _yy = y - lengthdir_y(heightLen, image_angle);
	with(obj_particles) {
		part_particles_create(partSys, _xx , _yy, partTypeEnemyExhaust, 1);
	}
}