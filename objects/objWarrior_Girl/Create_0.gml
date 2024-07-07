/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7941706C
/// @DnDArgument : "expr" "room_speed / player_stats.attack_speed;"
/// @DnDArgument : "var" "attack_delay"
attack_delay = room_speed / player_stats.attack_speed;;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 499F31AE
/// @DnDArgument : "expr" "attack_delay"
/// @DnDArgument : "var" "attack_timer"
attack_timer = attack_delay;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 640347A3
/// @DnDArgument : "steps" "45"
alarm_set(0, 45);