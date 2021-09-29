// Button pressed for directions  
top = keyboard_check(ord("Z")) || keyboard_check(vk_up);
down = keyboard_check(ord("S")) || keyboard_check(vk_down);
right = keyboard_check(ord("D")) || keyboard_check(vk_right);
left = keyboard_check(ord("Q")) || keyboard_check(vk_left);
space = keyboard_check(vk_space) || mouse_button == mb_left;

#region shipProperties

// Speed limitation
if(speed > 4) {
	speed = 4;
}

// When going out of the screen, popping on the other side
move_wrap(true, true, sprite_width / 2);

#endregion

#region mouvement

// Ship rotation
image_angle += (left - right) * 3;

// Mouvement top & down
if(top) {
	motion_add(image_angle, 0.03);
} else if (down) {
	motion_add(((image_angle + 180) % 360), 0.06);
}


// No button pressed (learp)
if((top + down + right + left) == 0) {
	speed -= 0.01;
	if(speed < 0.10) {
		speed = 0;
	}
}

#endregion

#region shot

	if(space && alarm[0] <= 0) { 
		alarm[0] = room_speed / 10;
		scr_create_bullet(image_angle, bulletSpd, faction);
	}
	 
#endregion