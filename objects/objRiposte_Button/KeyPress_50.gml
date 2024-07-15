/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3980D3AB
/// @DnDArgument : "function" "riposte"
riposte();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6045A50D
/// @DnDArgument : "steps" "riposte_duration*room_speed"
/// @DnDArgument : "alarm" "2"
alarm_set(2, riposte_duration*room_speed);