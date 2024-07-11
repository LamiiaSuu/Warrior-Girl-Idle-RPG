self.image_xscale = -(self.image_xscale);

image_xscale *=10;
image_yscale *=10;

attack_delay = room_speed / attack_speed;;

attack_timer = attack_delay;

function attack(){
    state = skeleton_mace_state.ATTACK
}

function reset_attacks(){
    attack_delay = room_speed / attack_speed;
    attack_timer = attack_delay;
	attack_one = false;
	attack_two = false;
}