randomize();
x_pos = choose(-16,272)
y_pos = 96;
if x_pos < 0 {
	speed = 1.5;
	direction = 0;
}
if x_pos > 256 {
	speed = 1.5;
	direction = 180;
}