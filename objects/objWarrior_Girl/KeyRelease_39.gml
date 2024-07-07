/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 62FE4BA5
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "WARRIOR_STATE.SPRINTING_RIGHT"
if(state == WARRIOR_STATE.SPRINTING_RIGHT)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52D55A4E
	/// @DnDParent : 62FE4BA5
	/// @DnDArgument : "expr" "WARRIOR_STATE.RUNNING_RIGHT"
	/// @DnDArgument : "var" "state"
	state = WARRIOR_STATE.RUNNING_RIGHT;
}