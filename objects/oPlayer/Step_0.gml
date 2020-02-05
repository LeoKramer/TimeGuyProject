/// @description Core Player Logic

// Get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp += grv;

if(place_meeting(x,y+1,oWall)) and (key_jump)
{
	vsp = -jumpsp;
}

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

// Animation
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerAir;
	image_speed = 0;
	image_index = (vsp > 0)? 1 : 0;
}
else
{
	image_speed = 1;
	sprite_index = (hsp == 0)? sPlayerIdle : sPlayerRun;
	
}

if(hsp != 0) image_xscale = sign(hsp);