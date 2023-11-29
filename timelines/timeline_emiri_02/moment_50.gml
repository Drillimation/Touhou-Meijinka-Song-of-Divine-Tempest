if ammo >= 1 {
	timeline_position = 45;
}
else {
	randomize();
	direction = irandom_range(0,359);
	speed = 0.75;
	if direction > 90 and direction < 270 {
		sprite_index = spr_emiri_l
	}
	else {
		sprite_index = spr_emiri_r
	}
}