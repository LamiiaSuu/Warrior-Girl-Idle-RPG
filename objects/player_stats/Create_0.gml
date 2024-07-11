draw_set_font(fDungeon_Font);

function get_hp(){
	return objWarrior_Girl.hp

}

function get_max_hp(){
	return objWarrior_Girl.max_hp

}

function addGold(amount){
	gold += amount

}

function addHP(amount){
	if(objWarrior_Girl.hp + amount >= objWarrior_Girl.max_hp)
	objWarrior_Girl.hp = objWarrior_Girl.max_hp
	else
	objWarrior_Girl.hp += amount
}

function takeGold(amount){
	gold -= amount

}

function enemyClicked(){
	objEnemy_Controller.enemyTakeLightDamage(mouse_damage)
}

function characterClicked(){
	addHP(mouse_heal)
}

function getGold(){
	return gold

}

function addXP(xp){
	self.xp += xp
	if(self.xp >= xp_needed_for_next_level){
		level_up()
	}
}

function getXP(){
	return xp
}

function get_xp_needed_for_next_level(){
	return xp_needed_for_next_level
}

function get_xp_needed_for_last_level(){
	return xp_needed_for_last_level
}

function level_up(){
	character_level++
	xp_needed_for_last_level = xp_needed_for_next_level
	xp_needed_for_next_level *= 3
	objWarrior_Girl.level_up()
}

function getCharacterX(){
	return objWarrior_Girl.x

}

function getSpeedForBackground(){
	return objWarrior_Girl.speed_for_background

}

function getState(){
	return objWarrior_Girl.state

}

function getFighting(){
	return objWarrior_Girl.fighting

}

function level_up_coin(){
	coin_tier++


}

function take_damage(damage){

	
		if(objWarrior_Girl.hp - damage <= 0){
			objWarrior_Girl.hp = 0
		}else{
			objWarrior_Girl.hp -= damage
		if(objWarrior_Girl.state = WARRIOR_STATE.IDLE){
			objWarrior_Girl.state = WARRIOR_STATE.HURT
		}else{
			objWarrior_Girl.image_blend = c_red
			alarm_set(0,5)
		}
		
		
		}

}

function take_heavy_damage(damage){

	
		if(objWarrior_Girl.hp - damage <= 0){
			objWarrior_Girl.hp = 0
		}else{
			objWarrior_Girl.hp -= damage
			objWarrior_Girl.state = WARRIOR_STATE.HURT
		}

}


