/// @description Start enemy variables
hp = 10;

hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 5;
walkdirection = -1;

hitByEnemyAttack = ds_list_create();
canDashAttack = true;

state = ENEMYSTATE.WALKING;
enum ENEMYSTATE
{
	WALKING,
	PRIMARYATTACK,
	SECONDARYATTACK,
	CIRCULARATTACK,
	DASHING,
	DEAD,
	IDLE
}