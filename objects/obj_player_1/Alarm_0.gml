//if !instance_exists(obj_dialogue) {
	global.playerhealth[play_id] += 1;
	global.playerhealth[play_id] = clamp(global.playerhealth[play_id],0,30);
//}
alarm[0] = 300;