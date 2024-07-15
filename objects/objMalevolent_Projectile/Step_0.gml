if(image_index >= 5 && !damage_dealt){
	damage_dealt = true
	if(abs(x-player_stats.getCharacterX()) < 50)
		player_stats.take_heavy_damage(objMalevolent_Eye.attack_damage*2)
	speed = 0
}

if(image_index >= 3 && x >= player_stats.getCharacterX() + 250)
{
	image_index = 0
}

else
{
if(image_index >= image_number-1)
	{
		
		instance_destroy();
	}
}