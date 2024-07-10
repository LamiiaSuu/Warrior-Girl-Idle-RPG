attack_delay = room_speed / attack_speed;;

attack_timer = attack_delay;

alarm_set(0, 45);

orig_y = y
orig_x = x


function change_sprite(sprite_name){
// Change loose code to this.
}

function trigger_fight(){
		fighting = true;
		objEnemy_Controller.setInFight(true)
		state = WARRIOR_STATE.IDLE
}

function reset_attacks(){
	attack_delay = room_speed / attack_speed;
    attack_timer = attack_delay;
	attack_one = false;
	attack_two = false;
}

function full_attack(){
    state = WARRIOR_STATE.ATTACK_FULL
}
