function scr_declare_damage(_damage, _id){
	if global.chuhoujoutaimode == true {
		instance_destroy();
		global.playerhealth[_id] -= _damage;
		scr_one_channel_sound(snd_hurt)
		global.dream -= 10;
		global.dream = clamp(global.dream,0,1000);
		if global.playerhealth[_id] <= 0 {
			scr_one_channel_sound(snd_pichuun);
			if global.pnt_item >= 20 + (20 * global.revivesused) {
				global.pnt_item -= 20 + (20 * global.revivesused);
				global.revivesused += 1;
				global.playerhealth[other.play_id] = 30;
				randomize();
				if global.pow[_id] >= 9 {
					var inst = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item);
					inst.image_index = 2;
					for (var i = 0; i < 4; i += 1) {
						var inst = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
						inst.image_index = 0;
					}
				}
				instance_create_depth(x,y,0,obj_enemy_explosion);
				other.x_pos = 64 + (_id * 128)
				other.y_pos = 208
				other.invincible = true;
			}
			else {
				instance_destroy(other);
				global.playeractive[_id] = false;
				if global.playeractive[0] = false and global.playeractive[1] == false {
					instance_create_depth(0,0,0,obj_continue);
				}
			}
		}
	}
	else {
		scr_one_channel_sound(snd_pichuun)
		global.playerlives[_id] -= 1;
		if global.bombs[_id] < 3 {
			global.bombs[_id] = 3;
		}
		global.pow[_id] -= 12
		global.dream -= 100;
		global.dream = clamp(global.dream,0,1000);
		instance_destroy(obj_bullet_enemy);
		if global.playerlives[_id] >= 1 {
			randomize();
			if global.pow[_id] >= 9 {
				var inst = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item);
				inst.image_index = 2;
				for (var i = 0; i < 4; i += 1) {
					var inst = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
					inst.image_index = 0;
				}
			}
			instance_create_depth(x,y,0,obj_enemy_explosion);
			other.x_pos = 64 + (_id * 128)
			other.y_pos = 208
			other.invincible = true;
			
		}
		else {
			instance_destroy(other);
			global.playeractive[_id] = false;
			if global.playeractive[0] = false and global.playeractive[1] == false {
				instance_create_depth(0,0,0,obj_continue);
			}
		}
	}
	if instance_exists(obj_spell_banner_enemy) {
		with(obj_spell_banner_enemy) {
			failed = true;
		}
	}
	instance_destroy();
}