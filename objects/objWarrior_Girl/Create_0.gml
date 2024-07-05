/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4966C761
/// @DnDArgument : "expr" "WARRIOR_STATE.IDLE"
/// @DnDArgument : "var" "state"
state = WARRIOR_STATE.IDLE;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1F575C9B
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "inFight"
inFight = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73BDD555
/// @DnDArgument : "expr" "self.x"
/// @DnDArgument : "var" "originalX"
originalX = self.x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 047D15A3
/// @DnDArgument : "expr" "self.y"
/// @DnDArgument : "var" "originalY"
originalY = self.y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2446602D
/// @DnDComment : Muss wegen Initial Parallax geaddet werden
/// @DnDArgument : "expr" "camera_get_view_x(view_camera[0])+originalX"
/// @DnDArgument : "var" "x"
x = camera_get_view_x(view_camera[0])+originalX;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 777FB771
/// @DnDArgument : "expr" "SPEED_FOR_BACKGROUND.STOP"
/// @DnDArgument : "var" "speed_for_background"
speed_for_background = SPEED_FOR_BACKGROUND.STOP;