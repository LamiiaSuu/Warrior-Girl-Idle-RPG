if(inFight){
	if(enemy_id.draw){
		
	/// Draw Event of objEnemy_Controller
	draw_set_color(c_black); // Set color to black for outline

	// Draw thicker outline for the health bar
	var outline_width = 4; // Adjust as needed for thickness
	draw_rectangle(display_get_width() / 2 - healthbar_width / 2 - outline_width,
               100 - outline_width,
               display_get_width() / 2 + healthbar_width / 2 + outline_width,
               100 + healthbar_height + outline_width,
               false);

	// Calculate fill width based on current health
	var fill_width = healthbar_width * (enemy_id.hp / enemy_id.max_hp);

	// Draw filled health bar with red color
	draw_set_color(c_red); // Set color to red (or any color you prefer)
	draw_rectangle(display_get_width() / 2 - healthbar_width / 2,
               100,
               display_get_width() / 2 - healthbar_width / 2 + fill_width,
               100 + healthbar_height,
               true);

	draw_set_color(c_white); // Set color back to white for other drawing operations
}}
