/// @description initialise_bullet
/// @arg direction
/// @arg speed
/// @arg faction
/// @arg bullet_instance

function scr_initialise_bullet(){
	var b_direction = argument[0];
	var b_speed = argument[1];
	var b_faction = argument[2];
	var b_creator = id;
	var bullet = argument[3];


	with(bullet) {
		direction = b_direction;
		if(object_index == obj_bullet) {
			speed = b_speed;
		}
		faction = b_faction;
		creator = b_creator;
		
		if(faction == factions.ally) {
			image_blend = c_aqua;	
		} else if (faction == factions.enemy) {
			image_blend = c_red;
		}
	}
}