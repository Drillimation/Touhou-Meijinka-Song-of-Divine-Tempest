if failed == false {
	global.spellcard_history[# 0,spell_id] += 1;
	if global.playeractive[0] == true { global.playerscore[0] += spell_bonus }
	if global.playeractive[1] == true { global.playerscore[1] += spell_bonus }
}
global.spellcard_history[# 1,spell_id] += 1;
var inst = instance_create_layer(0,0,"Effects",obj_spell_bonus);
with(inst) {
	cleared = other.failed;
	bonus = other.spell_bonus;
}