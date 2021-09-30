/// @description Choose Frame

// Choosing what powerup it will be
image_index = irandom_range(0, image_number - 1);

// Destroying himself after a time
alarm[0] = 5 * room_speed;

// Color
image_blend = c_lime;

// No animation frame
image_speed = 0;

// Test
image_index = powerups.star_bullets