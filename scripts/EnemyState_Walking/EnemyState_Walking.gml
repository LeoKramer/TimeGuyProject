walksp = 5;

vsp += grv;

// Calculate direction of the player
if (oPlayer.x < oEnemy.x) walkdirection = -1;
else if (oPlayer.x > oEnemy.x) walkdirection = 1;
else walkdirection = 0;

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

// Animation
image_speed = 2;
sprite_index = (hsp == 0)? sEnemyIdle : sEnemyRun;

if (hsp != 0) image_xscale = sign(hsp);

if (distance_to_object(oPlayer) < 400 && canDashAttack && oPlayer.state != PLAYERSTATE.DEAD) 
	state = ENEMYSTATE.DASHING;
	
if (oPlayer.state = PLAYERSTATE.DEAD) state = ENEMYSTATE.IDLE;