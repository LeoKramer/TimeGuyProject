if (state == PLAYERSTATE.DEAD) return;

var _damage = argument0;

hp -= _damage;


if (hp <= 0) state = PLAYERSTATE.DEAD;
else 
{
	vsp = -jumpsp/2;
}