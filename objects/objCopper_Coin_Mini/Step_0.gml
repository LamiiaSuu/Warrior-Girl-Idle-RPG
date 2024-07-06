/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B90AE48
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "2"
if(image_alpha > 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 492CBD47
	/// @DnDParent : 6B90AE48
	/// @DnDArgument : "alpha" "-fade_speed"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += -fade_speed;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2DD254BE
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0B476DA8
	/// @DnDParent : 2DD254BE
	instance_destroy();
}