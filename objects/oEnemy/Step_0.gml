/// @description Core enemy logic
if (oPlayer.timeStoped)
{
	grv = 0;
	walksp = 0;
	return;
}
else
{
	grv = 0.5;
	if (state != ENEMYSTATE.DEAD)	walksp = 5;
}

vsp += grv;
hsp = walksp * walkdirection;

// Horizontal collision with wall
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
	walkdirection *= -1;
}
x += hsp;

// Vertical collision with wall
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

if (state == ENEMYSTATE.DEAD && !oPlayer.timeStoped)
{
	hsp = 0;
	walksp = 0;
	mask_index = sEnemyDead;
	sprite_index = sEnemyDead;
	if (AnimationEnd()) image_speed = 0;
}

if (hsp != 0) image_xscale = sign(hsp);