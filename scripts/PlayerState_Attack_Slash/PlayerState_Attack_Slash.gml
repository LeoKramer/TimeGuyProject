hsp = 0;
vsp = 0;

ProcessAttack(sAttackSlash, sAttackSlashHB);

// Trigger combo chain
if (keyAttack) && (image_index > 2)
{
	state = PLAYERSTATE.ATTACK_COMBO;
}

if (AnimationEnd())
{
	sprite_index = sPlayerIdle;
	state = PLAYERSTATE.FREE;
}