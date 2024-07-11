

attack_delay = room_speed / attack_speed;
//States / Animation States
switch(state){
	
	
case WARRIOR_STATE.IDLE: 

	if(!(sprite_index == sprWarrior_Idle))
	{
		sprite_index = sprWarrior_Idle;
		image_index = 0;
		
	}
	speed_for_background = SPEED_FOR_BACKGROUND.STOP;
	image_speed = 1;
	
	if(fighting){
	if (attack_timer > 0) {
    attack_timer--;
	}
	if (attack_timer <= 0) {
	full_attack()
	reset_attacks()
	}
		if(objEnemy_Controller.getEnemyDeathInitiated()){
	fighting = false;
	}
	

	
	}
	
	if(!objEnemy_Controller.enemy_exists){
		state = WARRIOR_STATE.RUNNING_RIGHT
	}
	
	
break;


case WARRIOR_STATE.RUNNING_RIGHT:

	if(!(sprite_index == sprWarrior_Run))
	{
		sprite_index = sprWarrior_Run;
		image_index = 0;

	}

	if(self.image_xscale < 0)
	{
		self.image_xscale = -(self.image_xscale);
	}
	image_speed = 1;
	speed_for_background = SPEED_FOR_BACKGROUND.STANDARD/2;
	
	if(objEnemy_Controller.enemy_exists && !keyboard_check(vk_right) && !fighting && !objEnemy_Controller.getEnemyDeathInitiated()){
		trigger_fight()
	}
	
break;

case WARRIOR_STATE.HURT: 	

	if(!(sprite_index == sprWarrior_Hurt))
	{
		sprite_index = sprWarrior_Hurt;
		image_index = 0;
		
	}
	
	if (image_index >= image_number-1)
		{
			state = WARRIOR_STATE.IDLE
		}

break;

case WARRIOR_STATE.DASH_STRIKE: 	
	
	image_speed = 1
	if(!(sprite_index == sprWarrior_Dash_Attack))
	{
		sprite_index = sprWarrior_Dash_Attack;
		image_index = 0;
		dash_attacked = false
	}
	
	if (image_index >= 4 && !dash_attacked)
		{
		objEnemy_Controller.enemyTakeHeavyDamage(attack_damage*2)
		dash_attacked = true
		}

	
	if (image_index >= image_number-1)
	{
		state = WARRIOR_STATE.IDLE
		//MOVE
		x = orig_x
	}else{
		//MOVE
		target_x = objEnemy_Position_X.x-70;
		if (image_index <= 4)
		acceleration = global_enemy_states.FIGHT_APPROACHING_SPEED_MODIFIER / 65;
		if (image_index > 4){
		acceleration = 0;
		}
		
		distance = point_distance(x, y, target_x, y);

		direction = point_direction(x, y, target_x, y);

		current_speed = distance * acceleration;

		move_x = lengthdir_x(current_speed, direction);

		x += move_x;
		}
		

break;


case WARRIOR_STATE.SPRINTING_RIGHT:

		if(!(sprite_index == sprWarrior_Run))
	{
		sprite_index = sprWarrior_Run;
		image_index = 0;

	}

	speed_for_background = SPEED_FOR_BACKGROUND.FAST/2;

	image_speed = image_speed_sprinting;
	
break;


case WARRIOR_STATE.RUNNING_LEFT:

	if(!(sprite_index == sprWarrior_Run))
	{
		sprite_index = sprWarrior_Run;
		image_index = 0;
		
	}

	if(self.image_xscale > 0)
	{
		self.image_xscale = -(self.image_xscale);
	}
	image_speed = 1;
	speed_for_background = -SPEED_FOR_BACKGROUND.STANDARD/2;
	
break;

case WARRIOR_STATE.ATTACK_FULL:
		image_speed = 1 + ((attack_speed-attack_speed_base)/2);
	if(!(sprite_index == sprWarrior_Attack))
	{
		sprite_index = sprWarrior_Attack;
		image_index = 0;
		
	}
	if (image_index >= 6 && !attack_one){
		objEnemy_Controller.enemyTakeDamage(attack_damage)
		attack_one = true;
	}
	
	if (image_index >= 10 && !attack_two){
		objEnemy_Controller.enemyTakeDamage(attack_damage)
		attack_two = true;
	}


	if (image_index >= image_number-1)
	{
		state = WARRIOR_STATE.IDLE
		
	}
	

	
break;

case WARRIOR_STATE.SLIDE:
	if(!(sprite_index == sprWarrior_Slide))
	{
		sprite_index = sprWarrior_Slide;
		image_index = 0;
		
	}
	
		if (image_index >= image_number-1)
	{
		
		if(keyboard_check(vk_right)){
		state = WARRIOR_STATE.SPRINTING_RIGHT
		}else{
		trigger_fight()
		}
		
		
	}

break;

case WARRIOR_STATE.DEAD:
	if(!(sprite_index == sprWarrior_Death))
	{
		sprite_index = sprWarrior_Death;
		image_index = 0;
		
	}
	if (image_index >= image_number-1)
	image_speed = 0

break;

}

if(hp = 0){
state = WARRIOR_STATE.DEAD
}

if(!fighting){
regenerate()
}
