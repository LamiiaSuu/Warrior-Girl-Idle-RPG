draw_self();

if(draw_tool_tip == true)
{
	draw_text(mouse_x + 5, mouse_y + -50, string("Upgrade for ") + string(next_upgrade_cost) + string("g"));
}