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
	
break;


case WARRIOR_STATE.SPRINTING_RIGHT:

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


}

