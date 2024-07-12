/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2511B177
/// @DnDArgument : "font" "fDungeon_Font"
/// @DnDSaveInfo : "font" "fDungeon_Font"
draw_set_font(fDungeon_Font);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 694D4D42
/// @DnDArgument : "x" "objHealth.x+(objHealth.sprite_width)+35"
/// @DnDArgument : "y" "objHealth.y-35"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "objWarrior_Girl.hp"
draw_text(objHealth.x+(objHealth.sprite_width)+35, objHealth.y-35, string("HP: ") + string(objWarrior_Girl.hp));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6B54548B
/// @DnDArgument : "x" "1450"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Click_Dmg: ""
/// @DnDArgument : "var" "mouse_damage"
draw_text(x + 1450, y + 0, string("Click_Dmg: ") + string(mouse_damage));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1629D80E
/// @DnDArgument : "x" "1450"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Click_Heal: ""
/// @DnDArgument : "var" "mouse_heal"
draw_text(x + 1450, y + 100, string("Click_Heal: ") + string(mouse_heal));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25646211
/// @DnDArgument : "var" "player_stats.character_level"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "10"
if(player_stats.character_level < 10)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 490C7CD7
	/// @DnDParent : 25646211
	/// @DnDArgument : "x" "objHeart.x+objHeart.sprite_width/2-8"
	/// @DnDArgument : "y" "objHeart.y+15"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "var" "character_level"
	draw_text(objHeart.x+objHeart.sprite_width/2-8, objHeart.y+15, string("") + string(character_level));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1BB22741
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 560FBB77
	/// @DnDParent : 1BB22741
	/// @DnDArgument : "x" "objHeart.x+objHeart.sprite_width/2-20"
	/// @DnDArgument : "y" "objHeart.y+15"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "var" "character_level"
	draw_text(objHeart.x+objHeart.sprite_width/2-20, objHeart.y+15, string("") + string(character_level));
}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6D340CE7
/// @DnDArgument : "font" "fDungeon_Font_Small"
/// @DnDSaveInfo : "font" "fDungeon_Font_Small"
draw_set_font(fDungeon_Font_Small);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5C7C5CE1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Gold: ""
/// @DnDArgument : "var" "gold"
draw_text(x + 0, y + 100, string("Gold: ") + string(gold));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0E3F0110
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "150"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Distance: ""
/// @DnDArgument : "var" "round(distance_traveled)"
draw_text(x + 0, y + 150, string("Distance: ") + string(round(distance_traveled)));

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
/// @DnDArgument : "y" "250"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""State: ""
/// @DnDArgument : "var" "player_stats.getState()"
draw_text(x + 0, y + 250, string("State: ") + string(player_stats.getState()));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 39293039
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "300"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Fighting: ""
/// @DnDArgument : "var" "player_stats.getFighting()"
draw_text(x + 0, y + 300, string("Fighting: ") + string(player_stats.getFighting()));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4841DF76
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "900"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""AD: ""
/// @DnDArgument : "var" "objWarrior_Girl.attack_damage"
draw_text(x + 100, y + 900, string("AD: ") + string(objWarrior_Girl.attack_damage));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2B41C2C1
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "950"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""AS: ""
/// @DnDArgument : "var" "objWarrior_Girl.attack_speed"
draw_text(x + 100, y + 950, string("AS: ") + string(objWarrior_Girl.attack_speed));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 179BEAD9
/// @DnDArgument : "x" "10"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "850"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""LVL: ""
/// @DnDArgument : "var" "character_level"
draw_text(x + 10, y + 850, string("LVL: ") + string(character_level));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0BE93DA3
/// @DnDArgument : "x" "250"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "950"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""XP: ""
/// @DnDArgument : "var" "xp_needed_for_next_level-xp"
draw_text(x + 250, y + 950, string("XP: ") + string(xp_needed_for_next_level-xp));