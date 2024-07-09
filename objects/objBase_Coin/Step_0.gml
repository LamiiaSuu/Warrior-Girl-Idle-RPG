/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B3EE017
/// @DnDArgument : "var" "player_stats.coin_tier"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "coin_tiers.COPPER"
if(!(player_stats.coin_tier == coin_tiers.COPPER))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1CFD6439
	/// @DnDParent : 3B3EE017
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "objSilver_Coin"
	/// @DnDArgument : "layer" ""Coins""
	/// @DnDSaveInfo : "objectid" "objSilver_Coin"
	instance_create_layer(x + 0, y + 0, "Coins", objSilver_Coin);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 34F46E32
	/// @DnDParent : 3B3EE017
	instance_destroy();
}