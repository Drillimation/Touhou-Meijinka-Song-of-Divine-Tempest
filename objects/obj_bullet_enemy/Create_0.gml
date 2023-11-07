grazable = true;
depth = -1000;
image_speed = 0;

effects_applied = false;
//Bouncing
can_bounce = false;
times_bounce = 0;
//Curving
can_curve = false;
curve_direction = 90;
curve_speed = 3;
//Sliding
can_slide = false;
slide_speed = 0.05;
slid = false;
//Jittering
can_jitter = false;
jitter_speed = 5;
jitter_direction = 5;
j = 0;
//Stretching
can_stretch = false;
stretch_x = 1;
stretch_y = 1;
stretch_speed = 0.05;
//Spawning more
can_spawnmore = false;
can_spawnmulti = false;
spawn_i = 1;
spawn_j = 1;
spawn_speed = 5;
bullet_arg[0] = 1;
bullet_arg[1] = 0;
bullet_arg[2] = spr_bullet_small_1;
bullet_arg[3] = 0;
bullet_arg[4] = 0;
bullet_arg[5] = 0;
bullet_arg[6] = false;
bullet_arg[7] = snd_enemy_fire;

can_spawnlocation = false;
spawn_location_x1 = 0;
spawn_location_y1 = 0;
spawn_location_x2 = 0;
spawn_location_y2 = 0;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
x_pos = x - view_xview;
y_pos = y - view_yview;