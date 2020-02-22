/// @description follow the camera
x = oCamera.x - oCamera.view_w_half + 10;
if (oRewindPosition.canRewind) image_alpha = 1;
else image_alpha = 0.1;

if (oPlayer.hp == 0) visible = false;