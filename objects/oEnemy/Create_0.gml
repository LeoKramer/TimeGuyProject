/// @description Start enemy variables
hp = 10;

hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 5;
walkdirection = -1;

state = ENEMYSTATE.ALIVE
enum ENEMYSTATE
{
	ALIVE,
	DEAD,
	HIT
}