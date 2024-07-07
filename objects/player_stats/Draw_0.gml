/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5C7C5CE1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Gold: ""
/// @DnDArgument : "var" "gold"
draw_text(x + 0, y + 0, string("Gold: ") + string(gold));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0E3F0110
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Distance: ""
/// @DnDArgument : "var" "round(distance_traveled)"
draw_text(x + 0, y + 100, string("Distance: ") + string(round(distance_traveled)));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 51C05B92
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "200"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Speed:  ""
/// @DnDArgument : "var" "real(objWarrior_Girl.speed_for_background)"
draw_text(x + 0, y + 200, string("Speed:  ") + string(real(objWarrior_Girl.speed_for_background)));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3F2D48A6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "300"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""State: ""
/// @DnDArgument : "var" "objWarrior_Girl.state"
draw_text(x + 0, y + 300, string("State: ") + string(objWarrior_Girl.state));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 39293039
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "400"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""inFight: ""
/// @DnDArgument : "var" "objWarrior_Girl.inFight"
draw_text(x + 0, y + 400, string("inFight: ") + string(objWarrior_Girl.inFight));