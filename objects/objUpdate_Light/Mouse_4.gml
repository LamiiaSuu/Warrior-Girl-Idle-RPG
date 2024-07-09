/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 263624DD
/// @DnDArgument : "expr" "next_upgrade_affordable"
if(next_upgrade_affordable)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 022D91EC
	/// @DnDParent : 263624DD
	/// @DnDArgument : "function" "player_stats.takeGold"
	/// @DnDArgument : "arg" "next_upgrade_cost"
	player_stats.takeGold(next_upgrade_cost);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 605A3D10
	/// @DnDParent : 263624DD
	/// @DnDArgument : "function" "player_stats.level_up_coin"
	player_stats.level_up_coin();

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 7C09CDC3
	/// @DnDParent : 263624DD
	/// @DnDArgument : "expr" "player_stats.coin_tier"
	var l7C09CDC3_0 = player_stats.coin_tier;
	switch(l7C09CDC3_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 02069C41
		/// @DnDParent : 7C09CDC3
		/// @DnDArgument : "const" "coin_tiers.SILVER"
		case coin_tiers.SILVER:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4386B6FD
			/// @DnDParent : 02069C41
			/// @DnDArgument : "expr" "coin_tier_costs.GOLD"
			/// @DnDArgument : "var" "next_upgrade_cost"
			next_upgrade_cost = coin_tier_costs.GOLD;
		
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 48902337
			/// @DnDParent : 02069C41
			break;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 52527A9E
		/// @DnDParent : 7C09CDC3
		/// @DnDArgument : "const" "coin_tiers.GOLD"
		case coin_tiers.GOLD:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6B737AB6
			/// @DnDParent : 52527A9E
			/// @DnDArgument : "expr" "coin_tier_costs.PLATINUM"
			/// @DnDArgument : "var" "next_upgrade_cost"
			next_upgrade_cost = coin_tier_costs.PLATINUM;
		
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 340787E8
			/// @DnDParent : 52527A9E
			break;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0F153262
		/// @DnDParent : 7C09CDC3
		/// @DnDArgument : "const" "coin_tiers.PLATINUM"
		case coin_tiers.PLATINUM:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 46276307
			/// @DnDParent : 0F153262
			/// @DnDArgument : "expr" "coin_tier_costs.DIAMOND"
			/// @DnDArgument : "var" "next_upgrade_cost"
			next_upgrade_cost = coin_tier_costs.DIAMOND;
		
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 46432A1D
			/// @DnDParent : 0F153262
			break;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2C9902FC
		/// @DnDParent : 7C09CDC3
		/// @DnDArgument : "const" "coin_tiers.DIAMOND"
		case coin_tiers.DIAMOND:
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 51F2BDEE
			/// @DnDParent : 2C9902FC
			break;
			break;
	}
}