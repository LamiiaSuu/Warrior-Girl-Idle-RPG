

if(cooldown_left == 0 && player_stats.character_level>=level_unlocked){
image_alpha = 1
}else{
image_alpha = 0.4
if(cooldown_left!=0)
cooldown_left-= 1
}