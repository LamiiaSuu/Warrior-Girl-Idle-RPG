/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 62015533
/// @DnDArgument : "xscale" "origScaleX*0.9"
/// @DnDArgument : "yscale" "origScaleY*0.9"
image_xscale = origScaleX*0.9;
image_yscale = origScaleY*0.9;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 741D7AC8
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "player_stats.gold"
player_stats.gold += 1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 08ABFB8E
/// @DnDArgument : "xpos" "mouse_x+65+(random_range(-15, 15))"
/// @DnDArgument : "ypos" "mouse_y-30"
/// @DnDArgument : "objectid" "objCopper_Coin_Mini"
/// @DnDArgument : "layer" ""Coin_Particles""
/// @DnDSaveInfo : "objectid" "objCopper_Coin_Mini"
instance_create_layer(mouse_x+65+(random_range(-15, 15)), mouse_y-30, "Coin_Particles", objCopper_Coin_Mini);