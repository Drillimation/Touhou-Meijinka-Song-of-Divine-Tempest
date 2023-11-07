#macro player obj_player_1
#macro enemy obj_enemy

function scr_shoot_bullet_player(_speed, _direction, _sprite, _color, _x, _y, _aimed, _sound, _player) {
	scr_one_channel_sound(_sound)
	view_xview = camera_get_view_x(view_camera[0]);
	view_yview = camera_get_view_y(view_camera[0]);
	if _aimed == true {
		if instance_exists(enemy) {
			var inst = instance_create_depth(x + _x, y + _y, -100, obj_bullet_player);
			inst.speed = _speed;
			inst.direction = point_direction(inst.x, inst.y, enemy.x, enemy.y) + 0;
			inst.sprite_index = _sprite
			inst.image_index = _color
			inst.play_id = _player;
		}
		else {
			var inst = instance_create_depth(x + _x, y + _y, -100, obj_bullet_player);
			inst.speed = _speed;
			inst.direction = _direction;
			inst.sprite_index = _sprite
			inst.image_index = _color
			inst.play_id = _player;
		}
	}
	else {
		var inst = instance_create_depth(x + _x, y + _y, -100, obj_bullet_player);
		inst.speed = _speed;
		inst.direction = _direction;
		inst.sprite_index = _sprite
		inst.image_index = _color
		inst.play_id = _player;
	}
}


function scr_shoot_bullet_enemy(_speed, _direction, _sprite, _color, _x, _y, _aimed, _sound) {
	scr_one_channel_sound(_sound)
	view_xview = camera_get_view_x(view_camera[0]);
	view_yview = camera_get_view_y(view_camera[0]);
	if _aimed == true {
		if instance_exists(player) {
			var inst = instance_create_depth(x + _x, y + _y, -100, obj_bullet_enemy);
			inst.speed = _speed;
			inst.direction = point_direction(inst.x, inst.y, player.x, player.y) + _direction;
			inst.sprite_index = _sprite
			inst.image_index = _color
		}
	}
	else {
		var inst = instance_create_depth(x + _x, y + _y, -100, obj_bullet_enemy);
		inst.speed = _speed;
		inst.direction = _direction;
		inst.sprite_index = _sprite
		inst.image_index = _color
	}
}