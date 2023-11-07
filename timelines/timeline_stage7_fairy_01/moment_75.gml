if direction != 270 {
	if direction == 0 {
		direction = 359;
	}
	if direction > 270 {
		direction -= 1;
	}
	if direction < 270 {
		direction += 1;
	}
}