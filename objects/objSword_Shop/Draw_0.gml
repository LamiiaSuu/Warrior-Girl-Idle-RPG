draw_self();

if(draw_tool_tip == true && !fully_upgraded)
{
	draw_text(mouse_x - 180, mouse_y + -100, string("Upgrade for ") + string(next_upgrade_cost) + string("g"));
}else if(fully_upgraded && draw_tool_tip == true){
	draw_text(mouse_x - 130, mouse_y + -100, string("Bloodthirster"));
}