draw_sprite(spr_title_raiko,0,view_xview + 128,view_yview + 256);
draw_sprite(spr_meijinka_logo,0,view_xview + 128,view_yview + 80);

font = font_add_sprite(spr_font,32,false,0);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(255,255,255));

if global.credits == 1 {
	draw_text(128,200,"PUSH ONLY 1P START BUTTON");
}
else {
	draw_text(128,200,"PUSH 1P OR 2P START BUTTON");
}

draw_text(view_xview + 128,view_yview + 216,@"
@2023 Drillimation/Studio Emiko/
E. Enthusiasm. All rights
reserved.
Characters @ Team Shanghai
Alice/Drillimation/Studio Emiko")