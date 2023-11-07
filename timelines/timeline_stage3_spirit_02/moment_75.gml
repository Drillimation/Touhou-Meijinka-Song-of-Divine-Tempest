if x_pos > 256 or x_pos < 0 or y_pos > 288 or y_pos < 0 {
	instance_destroy();
}
else {
	randomize();
	direction = irandom_range(0,360);
	timeline_position = 30;
}