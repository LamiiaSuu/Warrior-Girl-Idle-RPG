/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66755BC6
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "WARRIOR_STATE.RUNNING_RIGHT"
if(state == WARRIOR_STATE.RUNNING_RIGHT)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4DF85F76
	/// @DnDParent : 66755BC6
	/// @DnDArgument : "speed" "1.35"
	image_speed = 1.35;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 104E0CEF
	/// @DnDParent : 66755BC6
	/// @DnDArgument : "expr" "SPEED_FOR_BACKGROUND.FAST"
	/// @DnDArgument : "var" "speed_for_background"
	speed_for_background = SPEED_FOR_BACKGROUND.FAST;
}