image_speed = 1;
grv = 0.5;
vsp += grv;
	
while (!place_meeting(x,y+sign(vsp),oWall))
{
	y += sign(vsp);
}
	
vsp = 0;
hsp = 0;
walksp = 0;
mask_index = sEnemyDead;
sprite_index = sEnemyDead;
	
if (AnimationEnd()) image_speed = 0;