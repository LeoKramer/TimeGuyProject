/// @description Start enemy variables
hp = 10;

hsp = 0;
vsp = 0;
grv = 0.5;

state = ENEMYSTATE.ALIVE
enum ENEMYSTATE
{
	ALIVE,
	DEAD,
	HIT
}