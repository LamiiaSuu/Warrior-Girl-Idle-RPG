/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7C09A94E
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4DFAECD7
draw_self();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 013DB6A5
/// @DnDArgument : "expr" "left_pressed"
if(left_pressed)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 47B4D0C1
	/// @DnDParent : 013DB6A5
	/// @DnDArgument : "font" "fDungeon_Font_Small"
	/// @DnDSaveInfo : "font" "fDungeon_Font_Small"
	draw_set_font(fDungeon_Font_Small);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 75D27133
	/// @DnDParent : 013DB6A5
	/// @DnDArgument : "x" "-35"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-15"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Play""
	draw_text(x + -35, y + -15, string("Play") + "");
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 18E1A158
else
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 30CF676A
	/// @DnDParent : 18E1A158
	/// @DnDArgument : "font" "fDungeon_Font"
	/// @DnDSaveInfo : "font" "fDungeon_Font"
	draw_set_font(fDungeon_Font);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7BF00AF9
	/// @DnDParent : 18E1A158
	/// @DnDArgument : "x" "-55"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-25"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Play""
	draw_text(x + -55, y + -25, string("Play") + "");
}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 30ADEFA6
/// @DnDArgument : "font" "fDungeon_Font"
/// @DnDSaveInfo : "font" "fDungeon_Font"
draw_set_font(fDungeon_Font);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 64E74F15
draw_set_colour($FFFFFFFF & $ffffff);
var l64E74F15_0=($FFFFFFFF >> 24);
draw_set_alpha(l64E74F15_0 / $ff);