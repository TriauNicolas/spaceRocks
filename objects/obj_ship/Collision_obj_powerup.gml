with(other) {
	var powerup_type = image_index;
	instance_destroy();
}

switch(powerup_type) {
	case powerups.invincible:
		invincible = true;
		alarm[2] = 8 * room_speed;
		break;
		
	default:
		guns = powerup_type;
		alarm[1] = 5 * room_speed;
		break;
}