// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_newgame(){
	global.stage = 1;
	global.continuesused = 0;
	global.gamemode = 0;
	global.difficulty = 0;
	global.pnt_item = 0;
	global.dream = 0;
	global.chuhoujoutaimode = false;
	global.freeplaymode = false;
	global.character[0] = "REIMU"
	global.character[1] = "MARISA"
	for (var i = 0; i < 2; i += 1) {
		global.playeractive[i] = 0;
		global.playerscore[i] = 0;
		global.pow[i] = 0;
		global.graze[i] = 0;
		global.bombs[i] = 3;
		global.playerlives[i] = 3;
		global.playerhealth[i] = 30;
		global.bombscore[i] = 100000
		global.received[i] = 1;

		//Statistics
		global.timesrevived[i] = 0;
		global.totalpnt_items[i] = 0;
		global.totalpow[i] = 0;
		global.totaldreams[i] = 0;
		global.totalbombsused[i] = 0;
	}
	global.revivesused = 1;
	global.victoryachieved = false;
	global.canjoin = false;
}

function scr_newgame_ext(){
	global.stage = 1;
	global.continuesused = 0;
	global.gamemode = 0;
	global.difficulty = 0;
	global.pnt_item = 0;
	global.dream = 0;
	global.chuhoujoutaimode = false;
	global.freeplaymode = false;
	global.character[0] = "REIMU"
	global.character[1] = "MARISA"
	for (var i = 0; i < 2; i += 1) {
		global.playerscore[i] = 0;
		global.pow[i] = 0;
		global.graze[i] = 0;
		global.bombs[i] = 3;
		global.playerlives[i] = 3;
		global.playerhealth[i] = 30;
		global.bombscore[i] = 100000
		global.received[i] = 1;

		//Statistics
		global.timesrevived[i] = 0;
		global.totalpnt_items[i] = 0;
		global.totalpow[i] = 0;
		global.totaldreams[i] = 0;
		global.totalbombsused[i] = 0;
	}
	global.revivesused = 1;
	global.victoryachieved = false;
	global.canjoin = false;
}