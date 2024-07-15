show_debug_message(state)
show_debug_message(objEnemy_Controller.inFight)
show_debug_message(fight_positioned)
if(objEnemy_Controller.inFight && !fight_positioned){
	draw = true;
		if(!(sprite_index == sprMalevolent_Eye_Flight))
			{
				sprite_index = sprMalevolent_Eye_Flight;
				image_speed = 1;
			}
			
			if(self.image_xscale > 0)
			{
				self.image_xscale = -(self.image_xscale);
			}
	target_x = objEnemy_Position_X.x;
	acceleration = global_enemy_states.FIGHT_APPROACHING_SPEED_MODIFIER / 100;

	// Calculate the distance to the target
	distance = point_distance(x, y, target_x, y);

	// Calculate the direction to the target
	direction = point_direction(x, y, target_x, y);

	// Adjust speed based on distance
	current_speed = distance * acceleration;

	// Calculate the movement
	move_x = lengthdir_x(current_speed, direction);
	move_y = lengthdir_y(current_speed, direction);

	// Update the object's position
	x += move_x;
	y += move_y;
			if(abs(x - target_x) < 5.5){
			fight_positioned = true;
			state = malevolent_eye_state.FLIGHT}
}else{


//States / Animation States
switch(state){
	

	
	
case malevolent_eye_state.FLIGHT: 

	if(!(sprite_index == sprMalevolent_Eye_Flight))
	{
		sprite_index = sprMalevolent_Eye_Flight;
		image_index = 0;
		
	}
	image_speed = 1;
	
	if (attack_timer > 0) {
		attack_timer--;
	}
	
	if (attack_timer <= 0) {
		attack()
		reset_attacks()
	}
	
break;


case malevolent_eye_state.HIT: 

	if(!(sprite_index == sprMalevolent_Eye_Hit))
	{
		sprite_index = sprMalevolent_Eye_Hit;
		image_index = 0;
		
	}
	image_speed = 1;
	
	if (image_index >= image_number-1)
	{
		state = malevolent_eye_state.FLIGHT
		
	}
	
	
break;



case malevolent_eye_state.FLYING_RIGHT:

	if(!(sprite_index == sprMalevolent_Eye_Flight))
	{
		sprite_index = sprMalevolent_Eye_Flight;
		image_index = 0;

	}

	if(self.image_xscale < 0)
	{
		self.image_xscale = -(self.image_xscale);
	}
	image_speed = 1;
	
break;


case malevolent_eye_state.DEATH:

	
	if(!(sprite_index == sprMalevolent_Eye_Death))
	{
		sprite_index = sprMalevolent_Eye_Death;
		image_index = 0;

	}

	
	if (image_index >= image_number-1 && !death_initiated){

		death_initiated = true
		image_speed = 0;
		alarm_set(0,30)
		player_stats.addGold(gold_worth)
		player_stats.addXP(xp_worth)
		gold_coin_instance = instance_create_layer(x, y-130, "Coin_Particles", objCopper_Coin_Mini);
		gold_coin_instance.gold_added = gold_worth
		gold_coin_instance.image_yscale *=3
		gold_coin_instance.image_xscale *=3
		gold_coin_instance.fade_speed = 0.0065
		gold_coin_instance.speed = 1.2
	}
break;



case malevolent_eye_state.FLYING_LEFT:

	if(!(sprite_index == sprMalevolent_Eye_Flight))
	{
		sprite_index = sprMalevolent_Eye_Flight;
		image_index = 0;

	}

	if(self.image_xscale > 0)
	{
		self.image_xscale = -(self.image_xscale);
	}
	image_speed = 1;
	
break;

case malevolent_eye_state.ATTACK:
	is_attacking = true
	if(!(sprite_index == sprMalevolent_Eye_Attack))
	{
		sprite_index = sprMalevolent_Eye_Attack;
		image_index = 0;
		
	}
	
	if (image_index >= 7 && !attack_one){
		player_stats.take_damage(attack_damage)
		attack_one = true;
	}
	
		if (image_index >= image_number-1)
		{
			state = malevolent_eye_state.FLIGHT
			is_attacking = false
		}


break;

case malevolent_eye_state.SPECIAL:
	is_attacking = true
	if(!(sprite_index == sprMalevolent_Eye_Attack3))
	{
		sprite_index = sprMalevolent_Eye_Attack3;
		image_index = 0;
		
	}
	
	if (image_index >= 4 && !special_attack){
		special_attack = true
		instance_create_layer(x-50,y-25,"Enemy_Projectiles",objMalevolent_Projectile)
	}
	
		if (image_index >= image_number-1)
		{
			state = malevolent_eye_state.FLIGHT
			is_attacking = false
		}


break;

case malevolent_eye_state.APPROACHING:
if(objEnemy_Controller.inFight)
	state = malevolent_eye_state.FLIGHT;
else{
	if(!(sprite_index == sprMalevolent_Eye_Flight))
	{
		sprite_index = sprMalevolent_Eye_Flight;
		image_index = 0;
		
	}

			
		
			
	if(self.image_xscale > 0)
	{
		self.image_xscale = -(self.image_xscale);
	}
	image_speed = 1;
	
	if(player_stats.getCharacterX() < x){
		
		x-=walk_speed+player_stats.getSpeedForBackground()*4;
	
		if(self.image_xscale > 0)
			{
				self.image_xscale = -(self.image_xscale);
			}
	
	}else{
				if(self.image_xscale < 0)
			{
				self.image_xscale = -(self.image_xscale);
			}
		x+=walk_speed-player_stats.getSpeedForBackground()*4;
	}
}
break;


}



}

if(x < -250){
instance_destroy(self)}

if(hp <= 0){
state = malevolent_eye_state.DEATH;
}