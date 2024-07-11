if(next_upgrade_affordable)
{
	player_stats.takeGold(next_upgrade_cost);
	



	switch(staff_tier)
	{
		case staff_tiers.WOOD:
			player_stats.mouse_heal += staff_tier_heal.WOOD/6;
			next_upgrade_cost = staff_tier_costs.BLACK
			sprite_index = sprStaff_Black
			staff_tier = staff_tiers.BLACK
			break;
	
		case staff_tiers.BLACK:
			player_stats.mouse_heal += staff_tier_heal.BLACK/6;
			next_upgrade_cost = staff_tier_costs.GOLD
			sprite_index = sprStaff_Golden
			staff_tier = staff_tiers.GOLD
			break;
	
		case staff_tiers.GOLD:
			player_stats.mouse_heal += staff_tier_heal.GOLD/6;
			next_upgrade_cost = staff_tier_costs.BLOOD
			sprite_index = sprStaff_Bloodletter
			staff_tier = staff_tiers.BLOOD
			break;
			
	
		case staff_tiers.BLOOD:
			player_stats.mouse_heal += staff_tier_heal.BLOOD/6;
			fully_upgraded = true;
			break;
		
	}
}