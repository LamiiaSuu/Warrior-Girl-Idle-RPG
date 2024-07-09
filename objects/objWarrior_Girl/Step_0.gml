
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
	image_speed = 1;

	if (image_index >= image_number-1)
	{
		alarm_set(1,5)
		
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

}

