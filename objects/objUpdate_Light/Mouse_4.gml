/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 263624DD
/// @DnDArgument : "expr" "next_upgrade_affordable"
if(next_upgrade_affordable)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 605A3D10
	/// @DnDParent : 263624DD
	/// @DnDArgument : "function" "player_stats.level_up_coin"
	player_stats.level_up_coin();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4386B6FD
	/// @DnDParent : 263624DD
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "next_upgrade_cost"
	next_upgrade_cost += 1;
}