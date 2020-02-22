/// @description Establish some key variables

room_speed = 60;

hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 8;
jumpsp = 15;
timeStoped = false;
canTimeStop = true;
hp = 2;

// Adding state machine
state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO,
	AIR_ATTACK,
	DEAD
}

alreadyAirAttacked = false;