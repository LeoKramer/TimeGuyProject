hsp = 0;
vsp = 0;

ProcessAttack(sPlayerAttackCombo, sPlayerAttackComboHB);

// Trigger combo chain
if (keyAttack) && (image_index > 2)
{
	state = PLAYERSTATE.ATTACK_SLASH;
}

if (AnimationEnd())
{
	sprite_index = sPlayerIdle;
	state = PLAYERSTATE.FREE;
}