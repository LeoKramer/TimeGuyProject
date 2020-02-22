image_speed = 1;

hsp = 6 * walkdirection

EnemyProcessAttack(sEnemyNormalAttack, sEnemyNormalAttackHB);

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

if (AnimationEnd())
{
	if (distance_to_object(oPlayer) < 200 && oPlayer.state != PLAYERSTATE.DEAD) state = ENEMYSTATE.SECONDARYATTACK;
	else state = ENEMYSTATE.WALKING;
}