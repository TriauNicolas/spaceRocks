/// @function                           scrDestroyOutOfRoom();
/// @description						Destroying a sprite when it's going out of the window
/// @Note								Not used, just a test
function scrDestroyOutOfRoom(){
	if((x > room_width + sprite_width) || (x < sprite_width) || 
	(y > room_width + sprite_height) || (y < sprite_height)) {
		
		instance_destroy();
	}
}