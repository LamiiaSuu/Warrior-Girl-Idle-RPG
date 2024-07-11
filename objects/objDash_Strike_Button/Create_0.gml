cooldown_duration = cooldown_base * room_speed;
function dash_attack(){
	if(player_stats.getFighting()){
if(cooldown_left == 0 && player_stats.character_level>=level_unlocked){
objWarrior_Girl.state = WARRIOR_STATE.DASH_STRIKE
cooldown_left = cooldown_duration
}else{
image_blend = c_red
alarm_set(0, 5)
}
}

}

