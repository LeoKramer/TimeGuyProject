if (state == ENEMYSTATE.DEAD) return;

var _damage = argument0;

hp -= _damage;

if (hp > 0) state = ENEMYSTATE.HIT;
else state = ENEMYSTATE.DEAD;