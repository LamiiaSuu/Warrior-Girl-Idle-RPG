// Draw Event of objDash_Strike_Button
// Call the default draw event to draw the button normally
draw_self();


if (draw_tooltip) {


    draw_set_color(c_white);
	draw_set_font(fDungeon_Font_Small);

    
	
	
	if(mouse_x-225 > 0){
		draw_set_font(fDungeon_Font);
		draw_text(mouse_x-70, mouse_y-300, string("Athlete"));
		draw_set_font(fDungeon_Font_Small);
		draw_text(mouse_x-225, mouse_y-200, string("Hold right to sprint past enemies"));
		draw_text(mouse_x-165, mouse_y-150, string("Hit twice every attack"));
		draw_text(mouse_x-210, mouse_y-100, string("Regenerate hp out of combat"));
		draw_set_font(fDungeon_Font);
	}
	else{
		draw_set_font(fDungeon_Font);
		draw_text(155, mouse_y-300, string("Athlete"));
		draw_set_font(fDungeon_Font_Small);
		draw_text(0, mouse_y-200, string("Hold right to sprint past enemies"));
		draw_text(60, mouse_y-150, string("Hit twice every attack"));
		draw_text(15, mouse_y-100, string("Regenerate hp out of combat"));
		draw_set_font(fDungeon_Font);
	}
}