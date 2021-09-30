/// @description create_bullet
/// @arg direction
/// @arg speed
/// @arg faction
/// @arg gun_type

function scr_create_bullet(){
	var b_direction = argument[0];
	var b_speed = argument[1];
	var b_faction = argument[2];
	
	var gun_type = -1;
	if(argument_count > 3) {
		gun_type = argument[3];	
	}
	
	// Gun Type
	switch(gun_type) {
		case powerups.three_bullets:
			var	bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			scr_initialise_bullet(b_direction, b_speed, b_faction, bullet);	
		
		case powerups.two_bullets:
			audio_play_sound(snd_zap, 1, false);
			
			var sep = 12;
			
			var	bullet = instance_create_layer(
				x + lengthdir_x(sep, b_direction + 90),
				y + lengthdir_y(sep, b_direction + 90),
				"Instances",
				obj_bullet
			);
			scr_initialise_bullet(b_direction, b_speed, b_faction, bullet);
			
			var	bullet = instance_create_layer(
				x + lengthdir_x(sep, b_direction - 90),
				y + lengthdir_y(sep, b_direction - 90),
				"Instances",
				obj_bullet
			);
			scr_initialise_bullet(b_direction, b_speed, b_faction, bullet);
			break;
			
		case powerups.four_bullets:
			audio_play_sound(snd_zap, 1, false);
			
			var sep = 7;
			var bullet_angle;
			var i = 0;
			
			repeat(4) {
				bullet_angle = b_direction + (i * 90);
				var	bullet = instance_create_layer(
					x + lengthdir_x(sep, bullet_angle),
					y + lengthdir_y(sep, bullet_angle),
					"Instances",
					obj_bullet
				);
				scr_initialise_bullet(bullet_angle, b_speed, b_faction, bullet);
				i++
			}
			i = 0;
			break;

		case powerups.star_bullets:
			audio_play_sound(snd_zap, 1, false);
			
			var sep = 7;
			var bullet_angle;
			var i = 0;
			
			repeat(8) {
				bullet_angle = b_direction + (i * 45);
				var	bullet = instance_create_layer(
					x + lengthdir_x(sep, bullet_angle),
					y + lengthdir_y(sep, bullet_angle),
					"Instances",
					obj_bullet
				);
				scr_initialise_bullet(bullet_angle, b_speed, b_faction, bullet);
				i++
			}
			i = 0;
			break;
			
		case powerups.laser:
		
			break;
			
		default:
			audio_play_sound(snd_zap, 1, false);
			var	bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			scr_initialise_bullet(b_direction, b_speed, b_faction, bullet);
			break;
	}
}