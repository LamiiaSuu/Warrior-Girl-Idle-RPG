draw_set_alpha(self.image_alpha);

draw_set_font(fDungeon_Font);

draw_self();

draw_text(x + -40, y + 0, string("+") + string(gold_added));

draw_set_alpha(1);