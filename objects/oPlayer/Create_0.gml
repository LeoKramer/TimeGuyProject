/// @description Establish some key variables

hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 8;
jumpsp = 15;
timeStoped = false;

// Adding state machine
state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO,
	AIR_ATTACK
}

alreadyAirAttacked = false;