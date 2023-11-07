can_attack = false;
entered = false;
hp = 15;
enemy_id = 0;

randomize();
sprite_index = choose(spr_fairy_2,spr_fairy_4,spr_kedama_4,spr_kedama_3);
x = irandom_range(16,240);

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
x_pos = x - view_xview;
y_pos = y - view_yview;