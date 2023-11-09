scr_trigger_dialogue("stage7_" + _char + "_prebattle",obj_jeanne,spr_jeanne,14);
with(obj_bullet_enemy) {
	instance_destroy();
}
with(obj_enemy) {
	if can_attack == true {
		instance_destroy();
	}
}
instance_destroy();