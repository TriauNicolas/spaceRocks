// Check if play is inside range
if(!instance_exists(obj_ship)) {
	exit;	
}

if(point_distance(x, y, obj_ship.x, obj_ship.y) < 250) {
	// Looking at the player
	var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle
	
	show_debug_message(speed)
	
	if(point_distance(x, y, obj_ship.x, obj_ship.y) < 150) {
		speed -= 0.05;
		if(speed <= 0.5) {
			speed = 0.5;	
		}
	} else {
		speed += 0.01;
		if(speed >= 2) {
			speed = 2;	
		}
	}
	
	// Shooting
	bulletCounter++
	if(bulletCounter >= 40) {
		scr_create_bullet(image_angle, 8, faction);	
		bulletCounter = 0;
	}
} else {
	speed = lerp(speed, originalSpeed, 0.1);
}