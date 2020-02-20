/// @description make the rewind

rewindKey = keyboard_check(ord("R"));

if (!canRewind || oPlayer.state == PLAYERSTATE.DEAD)
{
	oRewindPosition.visible = false;
}
else
{
	arr = playerPositions[|0];
	oRewindPosition.x = arr[0];
	oRewindPosition.y = arr[1];
	oRewindPosition.visible = true;
}

if (!rewindKey) 
{
	ds_list_add(playerPositions, [oPlayer.x, oPlayer.y]);
}

if (ds_list_size(playerPositions) > 60*maxSeconds) ds_list_delete(playerPositions, 0);

if (rewindKey && canRewind && oPlayer.state != PLAYERSTATE.DEAD) 
{ 
	canRewind = false;
	arr = playerPositions[|0];
	oPlayer.x = arr[0];
	oPlayer.y = arr[1];
	ds_list_clear(playerPositions);
	oRewindPosition.alarm[0] = room_speed * 3;
}