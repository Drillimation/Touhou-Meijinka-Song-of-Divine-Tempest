with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_kunai and image_index == 5 {
		scr_shoot_bullet_enemy(speed - 0.25,0,spr_bullet_arrow,image_index,0,0,true,snd_enemy_fire_kira);
		instance_destroy();
	}
}
if instance_exists(obj_player_1) {
	var ex = instance_nearest(x,y,obj_player_1).x;
	var ey = instance_nearest(x,y,obj_player_1).y;
	direction = point_direction(x,y,ex,ey);
	speed += 0.25;
}