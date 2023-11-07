scr_change_bgm(16);

var _buffer = buffer_load("gamefiles/touhou_meijinka_staff.txt");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

//var _load_data = json_parse(_string);

txt = _string;
shd = scribble_font_bake_shadow("font_chicago","drp_shd",1,1,make_color_rgb(0,0,0),1,0,false);

vspeed = -0.5;