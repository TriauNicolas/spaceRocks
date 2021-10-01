/// @description creating laser "sprite"

var lengthLaser = 300;

// Normal draw
draw_line_width_color(
	x,
	y,
	x + lengthdir_x(lengthLaser, direction),
	y + lengthdir_y(lengthLaser, direction),
	5,
	image_blend,
	image_blend
);

// Collision draw
var laserInst = collision_line(
	x,
	y,
	x + lengthdir_x(lengthLaser, direction),
	y + lengthdir_y(lengthLaser, direction),
	obj_faction,
	false,
	false
);

if(laserInst != noone) {
	if(laserInst.faction != faction) {
		with(laserInst) {
			if(!immuneToLaser) {
				event_perform(ev_other, ev_user0);
			}
		}
	}
}