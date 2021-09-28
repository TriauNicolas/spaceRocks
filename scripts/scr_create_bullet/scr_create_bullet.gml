/// @description create_bullet
/// @arg direction
/// @arg speed
/// @arg faction

function scr_create_bullet(){
	var b_direction = argument[0];
	var b_speed = argument[1];
	var b_faction = argument[2];
	var b_creator = id;
	
	// Creating bullet + playing sound
	audio_play_sound(snd_zap, 1, false);
	var	bullet = instance_create_layer(x, y, "Instances", obj_bullet);

	with(bullet) {
		direction = b_direction;
		speed = b_speed;
		faction = b_faction;
		creator = b_creator;
		
		if(faction == factions.ally) {
			image_blend = c_aqua;	
		} else if (faction == factions.enemy) {
			image_blend = c_red;
		}
	}
}