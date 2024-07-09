/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C45B073
/// @DnDArgument : "var" "player_stats.getGold()"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "next_upgrade_cost"
if(player_stats.getGold() >= next_upgrade_cost)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 38B01BD3
	/// @DnDParent : 7C45B073
	image_alpha = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0001E3DE
	/// @DnDParent : 7C45B073
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "next_upgrade_affordable"
	next_upgrade_affordable = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 29C80140
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 75BD7542
	/// @DnDParent : 29C80140
	/// @DnDArgument : "alpha" "0.5"
	image_alpha = 0.5;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40F467E9
	/// @DnDParent : 29C80140
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "next_upgrade_affordable"
	next_upgrade_affordable = false;
}