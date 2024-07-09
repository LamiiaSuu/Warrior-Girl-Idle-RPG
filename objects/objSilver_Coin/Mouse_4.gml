/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 08D4B2C2
/// @DnDArgument : "xscale" "origScaleX*0.9"
/// @DnDArgument : "yscale" "origScaleY*0.9"
image_xscale = origScaleX*0.9;
image_yscale = origScaleY*0.9;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7DD1673E
/// @DnDArgument : "function" "player_stats.addGold"
/// @DnDArgument : "arg" "gold_gain_per_click"
player_stats.addGold(gold_gain_per_click);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1CACD3D2
/// @DnDArgument : "xpos" "mouse_x+65+(random_range(-15, 15))"
/// @DnDArgument : "ypos" "mouse_y-30"
/// @DnDArgument : "var" "coin_particle_click"
/// @DnDArgument : "objectid" "objSilver_Coin_Mini"
/// @DnDArgument : "layer" ""Coin_Particles""
/// @DnDSaveInfo : "objectid" "objSilver_Coin_Mini"
coin_particle_click = instance_create_layer(mouse_x+65+(random_range(-15, 15)), mouse_y-30, "Coin_Particles", objSilver_Coin_Mini);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7EBF83BE
/// @DnDArgument : "expr" "gold_gain_per_click"
/// @DnDArgument : "var" "coin_particle_click.gold_added"
coin_particle_click.gold_added = gold_gain_per_click;