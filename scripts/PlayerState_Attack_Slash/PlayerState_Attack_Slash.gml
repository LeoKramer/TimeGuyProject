hsp = 0;
vsp = 0;

// Start of the attack
if (sprite_index != sAttackSlash)
{
	sprite_index = sAttackSlash;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

// Use attack hitbox and check for hits
mask_index = sAttackSlashHB;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,oEnemy,hitByAttackNow, false);
if (hits > 0)
{
	for(var i = 0; i < hits; i++)
	{
		// If this instance has not been hit by this attack
		var hitID = hitByAttackNow[| i];
		if (ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID);
			with (hitID)
			{
				EnemyHit(2);
			}
		}
	}
}

ds_list_destroy(hitByAttackNow);
mask_index = sPlayerIdle;

if (animation_end())
{
	sprite_index = sPlayerIdle;
	state = PLAYERSTATE.FREE;
}