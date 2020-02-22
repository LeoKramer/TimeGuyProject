grv = 0.5;
vsp += grv;
	
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

mask_index = sPlayerDead;
sprite_index = sPlayerDead;
image_speed = 1;

if (AnimationEnd()) image_speed = 0;

restartKey = keyboard_check(ord("R"));
if (restartKey) room_restart();

closeKey = keyboard_check(vk_escape);
if (closeKey) game_end();