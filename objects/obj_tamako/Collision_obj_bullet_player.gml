switch(other.sprite_index) {
	case spr_reimu_shot: hp -= 5; break;
	case spr_reimu_shot_s: hp -= 1; break;
	case spr_marisa_shot: hp -= 5; break;
	case spr_marisa_shot_s: hp -= 1; break;
	case spr_sakuya_shot: hp -= 5; break;
	case spr_sakuya_shot_s: hp -= 1; break;
	case spr_youmu_shot: hp -= 5; break;
	case spr_youmu_shot_s: hp -= 1; break;
}
scr_one_channel_sound(snd_enemy_damage);
enemy_id = other.play_id;
global.playerscore[other.play_id] += 10;
instance_destroy(other);