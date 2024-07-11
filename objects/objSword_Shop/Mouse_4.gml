if(next_upgrade_affordable)
{
	player_stats.takeGold(next_upgrade_cost);
	



	switch(sword_tier)
	{
		case sword_tiers.WOOD:
			player_stats.mouse_damage += sword_tier_damage.WOOD/4;
			next_upgrade_cost = sword_tier_costs.IRON
			sprite_index = sprSword_Steel
			sword_tier = sword_tiers.IRON
			break;
	
		case sword_tiers.IRON:
			player_stats.mouse_damage += sword_tier_damage.IRON/4;
			next_upgrade_cost = sword_tier_costs.GOLD
			sprite_index = sprSword_Gold
			sword_tier = sword_tiers.GOLD
			break;
	
		case sword_tiers.GOLD:
			player_stats.mouse_damage += sword_tier_damage.GOLD/4;
			next_upgrade_cost = sword_tier_costs.BLOOD
			sprite_index = sprSword_Bloodthirster
			sword_tier = sword_tiers.BLOOD
			break;
			
	
		case sword_tiers.BLOOD:
			player_stats.mouse_damage += sword_tier_damage.BLOOD/4;
			fully_upgraded = true;
			break;
		
	}
}