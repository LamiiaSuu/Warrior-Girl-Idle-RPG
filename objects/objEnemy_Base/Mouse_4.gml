/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75E24C2D
/// @DnDArgument : "var" "objEnemy_Controller.inFight"
/// @DnDArgument : "value" "true"
if(objEnemy_Controller.inFight == true)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4C47B851
	/// @DnDParent : 75E24C2D
	/// @DnDArgument : "function" "player_stats.enemyClicked"
	player_stats.enemyClicked();
}