/// @description follow the camera
x = oCamera.x - oCamera.view_w_half + 10;
if (oPlayer.hp == 1) sprite_index = sHalfLife;
else if (oPlayer.hp == 0) visible = false;