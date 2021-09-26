/// @description spawn_off_camera
/// @arg obj
/// @arg number

function scr_spawn_off_camera() {
	
	var obj = argument[0];
	var number = argument[1];
	var xx;
	var yy;
	var pad = 64;
	
repeat(number) {
	if(irandom(1) == 0) {
	    xx = random(global.cameraX - pad);
	} else {
	    xx = random_range((global.cameraX - pad) + global.cameraWidth, room_width);
	}

	if(irandom(1) == 0) {
	    yy = random(global.cameraY + pad);
	} else {
	    yy = random_range((global.cameraY + pad) + global.cameraHeight, room_height);
	}
	
	instance_create_layer(xx, yy, "Instances", obj);
}
	 
}