image_speed = 0.5;

hsp = 12 * walkdirection

EnemyProcessAttack(sEnemyPiercingAttack, sEnemyPiercingAttackHB);

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
	alarm[0] = room_speed * 5;
	canDashAttack = false;
	state = ENEMYSTATE.WALKING;
}