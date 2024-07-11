
var xpPercentage = (player_stats.getXP()- player_stats.get_xp_needed_for_last_level()) / player_stats.get_xp_needed_for_next_level() ; 

draw_sprite_ext(sprite_index, 0, x, y, xpPercentage*scale_x, scale_y, 0, c_white, 1); 