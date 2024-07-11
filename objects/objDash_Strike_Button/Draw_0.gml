// Draw Event of objDash_Strike_Button
// Call the default draw event to draw the button normally
draw_self();

// Draw the cooldown time remaining in seconds
if (cooldown_left > 0) {
    var cooldown_seconds = ceil(cooldown_left / room_speed);

    // Set the color to white for the text
    draw_set_color(c_white);
	draw_set_font(fDungeon_Font);
    // Draw the cooldown time below the button icon
    draw_text(x, y, string(cooldown_seconds));
}

if (player_stats.character_level < level_unlocked && draw_unlock_tooltip) {
    draw_set_color(c_white);
	draw_set_font(fDungeon_Font);
    draw_text(mouse_x-200, mouse_y-70, string("Unlocked at Level " + string(level_unlocked)));
	draw_set_color(c_white);
}
