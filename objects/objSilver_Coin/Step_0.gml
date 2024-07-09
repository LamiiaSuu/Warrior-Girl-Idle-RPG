/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2875D662
/// @DnDArgument : "var" "player_stats.coin_tier"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "coin_tiers.SILVER"
if(!(player_stats.coin_tier == coin_tiers.SILVER))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 58A9A184
	/// @DnDParent : 2875D662
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "objGold_Coin"
	/// @DnDArgument : "layer" ""Coins""
	instance_create_layer(x + 0, y + 0, "Coins", objGold_Coin);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1DB6A94A
	/// @DnDParent : 2875D662
	instance_destroy();
}