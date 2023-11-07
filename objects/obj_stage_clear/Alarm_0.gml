if global.freeplaymode == false {
	global.stage += 1
	instance_create_layer(0,0,"Effects",obj_transition_in);
}
else {
	scr_change_bgm(15);
	instance_create_layer(0,0,"Effects",obj_gameover_transition);
}
instance_destroy();