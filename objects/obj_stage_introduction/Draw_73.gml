draw_set_alpha(1);
view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
font = font_add_sprite(spr_font_mp,32,false,0);
draw_sprite_ext(spr_stage_introduction,0,view_xview + 0,view_yview + 144,1,opac,0,make_color_rgb(255,255,255),1);

draw_set_halign(fa_left);
var scribble_object = scribble(stage_text)
	.starting_format(font_get_name(font),make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + (8), view_yview + (104),typist_1)
	
var scribble_object2 = scribble(txt)
	.starting_format(font_get_name(global.font[1]),make_color_rgb(0,0,0))
	.wrap(240)
	.line_spacing(16)
	.draw((view_xview + (8)) + 1, (view_yview + (152)) + 1,typist_2)

var scribble_object3 = scribble(txt)
	.starting_format(font_get_name(global.font[1]),make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + (8), view_yview + (152),typist_2)