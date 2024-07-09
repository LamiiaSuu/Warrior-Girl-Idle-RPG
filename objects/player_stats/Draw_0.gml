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
/// @DnDArgument : "var" "getSpeedForBackground()"
draw_text(x + 0, y + 200, string("Speed:  ") + string(getSpeedForBackground()));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3F2D48A6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "300"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""State: ""
/// @DnDArgument : "var" "player_stats.getState()"
draw_text(x + 0, y + 300, string("State: ") + string(player_stats.getState()));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 39293039
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "400"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Fighting: ""
/// @DnDArgument : "var" "player_stats.getFighting()"
draw_text(x + 0, y + 400, string("Fighting: ") + string(player_stats.getFighting()));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 694D4D42
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "500"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "objWarrior_Girl.hp"
draw_text(x + 0, y + 500, string("HP: ") + string(objWarrior_Girl.hp));