
var healthPercentage = player_stats.get_hp() / player_stats.get_max_hp(); 

draw_sprite_ext(sprite_index, 0, x, y, healthPercentage*scale_x, scale_y, 0, c_white, 1); 