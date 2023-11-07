if timeline_running == false {
	switch(sprite_index) {
		case spr_fairy_2: timeline_index = timeline_stage6_gami_01; break;
		case spr_fairy_4: timeline_index = timeline_stage6_gami_02; break;
		case spr_kedama_4: timeline_index =  timeline_stage6_gami_03; break;
		case spr_kedama_3: timeline_index = timeline_stage6_gami_04; break;
	}
	timeline_position = 0;
	timeline_running = true;
}