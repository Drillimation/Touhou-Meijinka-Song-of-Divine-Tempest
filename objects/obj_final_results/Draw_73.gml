view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

font = font_add_sprite(spr_font_mp,32,0,false);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(255,255,255))
draw_text(view_xview + 128,view_yview + 16,"FINAL RESULTS")

font2 = font_add_sprite(spr_font,32,0,false);
draw_set_font(font2);
draw_set_halign(fa_left);

draw_text(view_xview + 8,view_yview + 56,left_text);

draw_set_halign(fa_right);
draw_text(view_xview + 248,view_yview + 64,diff_text);
draw_text(view_xview + 248,view_yview + 80,global.continuesused);
draw_text(view_xview + 176,view_yview + 96,p1_statistics);
draw_text(view_xview + 248,view_yview + 96,p2_statistics);