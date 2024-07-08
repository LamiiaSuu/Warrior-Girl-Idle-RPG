function enemyTakeDamage(damage) constructor
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