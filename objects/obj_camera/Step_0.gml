// Follow target

if(instance_exists(target)) {
	global.cameraX = target.x - (global.cameraWidth / 2);
	global.cameraY = target.y - (global.cameraHeight / 2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);


// Parallax background with camera
layer_x(layerSpaceParallax01, global.cameraX * 0.98);
layer_y(layerSpaceParallax01, global.cameraY * 0.98);

layer_x(layerSpaceParallax02, global.cameraX * 0.95);
layer_y(layerSpaceParallax02, global.cameraY * 0.95);

layer_x(layerSpaceParallax03, global.cameraX * 0.92);
layer_y(layerSpaceParallax03, global.cameraY * 0.92);

layer_x(layerSpaceParallax04, global.cameraX * 0.9);
layer_y(layerSpaceParallax04, global.cameraY * 0.9);