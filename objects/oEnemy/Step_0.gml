/// @description Core enemy logic
vsp += grv;

// Horizontal collision with wall
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
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

if (state == ENEMYSTATE.DEAD)
{
	mask_index = sEnemyDead;
	sprite_index = sEnemyDead;
	if (AnimationEnd()) image_speed = 0;
}