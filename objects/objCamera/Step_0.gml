camera_set_view_pos(camera, x, y);
if(objWarrior_Girl.state == WARRIOR_STATE.RUNNING_RIGHT && !objWarrior_Girl.inFight){
xTemp = x;
	
x = lerp(x, x + 50, 0.08);
xDelta = x - xTemp;
objWarrior_Girl.x += xDelta;

}