draw_set_font(fDungeon_Font);

function addGold(amount){
	gold += amount

}

function getGold(){
	return gold

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
		if(objWarrior_Girl.state != WARRIOR_STATE.ATTACK_FULL && objWarrior_Girl.state != WARRIOR_STATE.ATTACK_ONCE){
			objWarrior_Girl.state = WARRIOR_STATE.HURT
		}else{
			objWarrior_Girl.image_blend = c_red
			alarm_set(0,5)
		}
		
		
		}

}


