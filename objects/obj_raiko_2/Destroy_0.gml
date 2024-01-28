scr_one_channel_sound(snd_boss_defeat);
var inst5 = instance_create_depth(x,y,0,obj_defeated_boss)
inst5.sprite_index = defeat_img;
if hp <= 0 {
	if timer >= 0.1 {
		if global.playeractive[0] == true { global.playerscore[0] += round(defeat_bonus + (timer*100)); }
		if global.playeractive[1] == true { global.playerscore[1] += round(defeat_bonus + (timer*100)); }
		var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
		inst1.display_score = defeat_bonus;
		randomize();
		var inst = instance_create_depth(x,y,-1000,obj_item);
		inst.image_index = choose(3,5);
		var inst2 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
		inst2.image_index = 2
		for (var i = 0; i < 4; i += 1) {
			var inst3 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
			inst3.image_index = 0;
		}
		for (var i = 0; i < 5; i += 1) {
			var inst4 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
			inst4.image_index = 1;
		}
		for (var i = 0; i < 3; i += 1) {
			var inst5 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
			inst5.image_index = 6
		}
	}
	with(obj_bullet_enemy) {
		if global.playeractive[0] == true { global.playerscore[0] += (abs(round((y_pos / 10) - 30)) * 10); }
		if global.playeractive[1] == true { global.playerscore[1] += (abs(round((y_pos / 10) - 30)) * 10); }
		instance_destroy();
	}
}
var lay_id = layer_get_id("Tiles_1");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != tileset_extrastage_2 {
  tilemap_tileset(tile_id, tileset_extrastage_2);
}
instance_create_depth(0,0,0,obj_camera_2);