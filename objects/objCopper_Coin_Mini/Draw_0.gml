draw_set_alpha(self.image_alpha);

draw_set_font(fDungeon_Font);

draw_self();

draw_text(x + -40, y + 0, string("+") + string(objCopper_Coin.gold_gain_per_click));

draw_set_alpha(1);