self.image_xscale = -(self.image_xscale);

image_xscale *=8;
image_yscale *=8;

attack_delay = room_speed / attack_speed;;

attack_timer = attack_delay;

function attack(){
	if(irandom(3) == 0 ){
		
		special()

	}else{
		
		state = malevolent_eye_state.ATTACK
		
	
	}
    
}

function special(){
    state = malevolent_eye_state.SPECIAL
}

function reset_attacks(){
    attack_delay = room_speed / attack_speed;
    attack_timer = attack_delay;
	attack_one = false;
	special_attack = false;
}