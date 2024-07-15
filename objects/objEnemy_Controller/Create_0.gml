function enemyTakeDamage(damage) constructor
{
	if(enemy_exists){
		if(enemy_id.hp - damage <= 0){
			enemy_id.hp = 0
		}else{
			enemy_id.hp -= damage
			
		if(!enemy_id.is_attacking){
			switch(enemy_id.object_index){
			
				case objSkeleton_Mace:
			
					enemy_id.state = skeleton_mace_state.HURT
			
				break
			
				case objMalevolent_Eye:
			
					enemy_id.state = malevolent_eye_state.HIT
			
				break
			
			}
			
			
		}else{
			enemy_id.image_blend = c_red
			alarm_set(0,5)
		}
		
		
		}
	}
	
}

function enemyTakeHeavyDamage(damage) constructor
{
	if(enemy_exists){
		if(enemy_id.hp - damage <= 0){
			enemy_id.hp = 0
		}else{
			enemy_id.hp -= damage
			enemy_id.state = skeleton_mace_state.HURT
		}
	}
	
}

function enemyTakeLightDamage(damage) 
{
	if(enemy_exists){
		if(enemy_id.hp - damage <= 0){
			enemy_id.hp = 0
		}else{
			enemy_id.hp -= damage
		}
	}
	
}

function getEnemyDeathInitiated() constructor
{
	if(enemy_exists){
		return enemy_id.death_initiated
		
	}
	
}

function setInFight(inFight){
self.inFight = true

}

enemy_spawn_distance_orig = enemy_spawn_distance