hsp = 0;
vsp = 0;

PlayerProcessAttack(sPlayerAttackCombo, sPlayerAttackComboHB);

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