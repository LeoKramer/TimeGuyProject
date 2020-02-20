/// @description Core enemy logic
if (oPlayer.timeStoped)
{
	grv = 0;
	walksp = 0;
	image_speed = 0;
	return;
}
else
{
	grv = 0.5;
	switch (state)
	{
		case ENEMYSTATE.WALKING: 
			EnemyState_Walking();
			break;
		case ENEMYSTATE.COMBOATTACKING:
			EnemyState_ComboAttack();
			break;
		case ENEMYSTATE.DASHING:
			EnemyState_Dash();
			break;
		case ENEMYSTATE.DEAD:
			EnemyState_Dead();
			break;
		case ENEMYSTATE.IDLE:
			EnemyState_Idle();
			break;
	}
}