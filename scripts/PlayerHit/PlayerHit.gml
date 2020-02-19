if (state == PLAYERSTATE.DEAD) return;

var _damage = argument0;

hp -= _damage;
show_debug_message(hp);

if (hp <= 0) state = PLAYERSTATE.DEAD;