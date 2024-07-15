/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5DD28751
/// @DnDArgument : "function" "riposte"
riposte();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2FFE46C2
/// @DnDArgument : "steps" "riposte_duration*room_speed"
/// @DnDArgument : "alarm" "2"
alarm_set(2, riposte_duration*room_speed);