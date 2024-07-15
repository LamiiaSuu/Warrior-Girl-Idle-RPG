// Draw Event of objDash_Strike_Button
// Call the default draw event to draw the button normally
draw_self();


if (cooldown_left > 0) {
    var cooldown_seconds = ceil(cooldown_left / room_speed);


    draw_set_color(c_white);
	draw_set_font(fDungeon_Font);

    draw_text(x, y, string(cooldown_seconds));
}
// Unlock Display (LEVEL)
if (player_stats.character_level < level_unlocked && draw_tooltip) {
    draw_set_color(c_white);
	draw_set_font(fDungeon_Font);
	if(mouse_x-200 < 0){
	draw_text(mouse_x, mouse_y-100, string("Unlocked at Level " + string(level_unlocked)));
	}
	else{
    draw_text(mouse_x-200, mouse_y-100, string("Unlocked at Level " + string(level_unlocked)));
	}
	draw_set_color(c_white);
}
// Name Display
else if(player_stats.character_level >= level_unlocked && draw_tooltip){
    draw_set_color(c_white);
	draw_set_font(fDungeon_Font);
	if(mouse_x-85 < 0){
	draw_text(mouse_x, mouse_y-60, string(string(skill_name)));
	}
	else{
    draw_text(mouse_x-85, mouse_y-100, string(string(skill_name)));
	}
	draw_set_color(c_white);
}
