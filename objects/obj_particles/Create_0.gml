partSys = part_system_create();

// Exhaust
partTypeExhaust = part_type_create();
part_type_sprite(partTypeExhaust, spr_exhaust, false, false, false);
part_type_size(partTypeExhaust, 0.4, 0.4, 0.05, 0);
part_type_color3(partTypeExhaust, c_white, c_fuchsia, c_purple);
part_type_alpha3(partTypeExhaust, 1, 1, 0);
part_type_life(partTypeExhaust, 20, 20);

// Enemy Exhaust
partTypeEnemyExhaust = part_type_create();
part_type_sprite(partTypeEnemyExhaust, spr_exhaust, false, false, false);
part_type_size(partTypeEnemyExhaust, 0.4, 0.4, 0.05, 0);
part_type_color3(partTypeEnemyExhaust, c_yellow, c_orange, c_red);
part_type_alpha3(partTypeEnemyExhaust, 1, 1, 0);
part_type_life(partTypeEnemyExhaust, 20, 20);

// Debris
partTypeAsteroidDebris = part_type_create();
part_type_sprite(partTypeAsteroidDebris, spr_asteroid_debris_strip4, false, false, true);
part_type_life(partTypeAsteroidDebris, 60, 80);
part_type_alpha3(partTypeAsteroidDebris, 0.8, 0.8, 0);
part_type_direction(partTypeAsteroidDebris, 0, 359, 0, false);
part_type_orientation(partTypeAsteroidDebris, 0, 359, 1, false, false);
part_type_speed(partTypeAsteroidDebris, 2, 2.4, -0.02, 0);


// Debris for ships
partTypeShipDebris = part_type_create();
part_type_sprite(partTypeShipDebris, spr_ship_debris_strip5, false, false, true);
part_type_size(partTypeShipDebris, 0.5, 1, 0, 0);
part_type_life(partTypeShipDebris, 60, 80);
part_type_alpha3(partTypeShipDebris, 0.6, 0.6, 0);
part_type_direction(partTypeShipDebris, 0, 359, 0, false);
part_type_orientation(partTypeShipDebris, 0, 359, 1, false, false);
part_type_speed(partTypeShipDebris, 3, 4, -0.06, 0);