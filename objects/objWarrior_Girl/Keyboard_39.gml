/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66755BC6
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "WARRIOR_STATE.RUNNING_RIGHT"
if(state == WARRIOR_STATE.RUNNING_RIGHT)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 104E0CEF
	/// @DnDParent : 66755BC6
	/// @DnDArgument : "expr" "WARRIOR_STATE.SPRINTING_RIGHT"
	/// @DnDArgument : "var" "state"
	state = WARRIOR_STATE.SPRINTING_RIGHT;
}