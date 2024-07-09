if(next_upgrade_affordable)
{
	player_stats.takeGold(next_upgrade_cost);

	player_stats.level_up_coin();

	var l7C09CDC3_0 = player_stats.coin_tier;
	switch(l7C09CDC3_0)
	{
		case coin_tiers.SILVER:
			next_upgrade_cost = coin_tier_costs.GOLD;
		
			
			break;
	
		case coin_tiers.GOLD:
			next_upgrade_cost = coin_tier_costs.PLATINUM;
		
			
			break;
	
		case coin_tiers.PLATINUM:
			next_upgrade_cost = coin_tier_costs.DIAMOND;
		
			break;
			
	
		case coin_tiers.DIAMOND:
			break;
		
	}
}