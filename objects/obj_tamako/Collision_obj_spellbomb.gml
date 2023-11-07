hp -= 1;
scr_one_channel_sound(snd_enemy_damage);
enemy_id = other.item_id;
global.playerscore[other.item_id] += 10;