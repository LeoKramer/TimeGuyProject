/// @description initialize the variables
playerPositions = ds_list_create(); // List that stores data for each step
maxSeconds = 3; // Max time you can rewind
canRewind = false;

oRewindPosition.alarm[0] = room_speed * 3;