randomize();
direction = irandom_range(0,360)
speed = 1;
if direction > 90 and direction < 270 {
	sprite_index = spr_kagami_l
}
else {
	sprite_index = spr_kagami_r
}
timeline_position = 120;