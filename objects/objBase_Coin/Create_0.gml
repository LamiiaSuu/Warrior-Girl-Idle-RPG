/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 10CA32C1
/// @DnDArgument : "expr" "objCopper_Coin.image_xscale"
/// @DnDArgument : "var" "origScaleX"
origScaleX = objCopper_Coin.image_xscale;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2978E4AE
/// @DnDArgument : "expr" "objCopper_Coin.image_xscale"
/// @DnDArgument : "var" "origScaleY"
origScaleY = objCopper_Coin.image_xscale;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 57DC6900
/// @DnDArgument : "xscale" "origScaleX"
/// @DnDArgument : "yscale" "origScaleY"
image_xscale = origScaleX;
image_yscale = origScaleY;