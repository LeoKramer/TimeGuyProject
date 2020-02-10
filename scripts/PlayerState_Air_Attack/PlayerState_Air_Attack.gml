image_speed = 2;
ProcessAttack(sPlayerAirAttack, sPlayerAirAttackHB);

// Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp/2;

vsp += grv*2;

// Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

// Vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

if (AnimationEnd())
{
	alreadyAirAttacked = true;
	state = PLAYERSTATE.FREE;
}