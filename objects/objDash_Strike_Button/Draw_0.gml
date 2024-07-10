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
