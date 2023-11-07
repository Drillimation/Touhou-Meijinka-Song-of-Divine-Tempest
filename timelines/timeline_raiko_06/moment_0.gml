randomize();
ammo = 8;
direction = irandom_range(0,359);
speed = 0.5;
if direction > 90 or direction < 270 {
	sprite_index = spr_raiko_l
}
else {
	sprite_index = spr_raiko_r
}