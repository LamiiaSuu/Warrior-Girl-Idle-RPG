var warriorSpeed = objWarrior_Girl.speed_for_background
if(objWarrior_Girl.state == WARRIOR_STATE.RUNNING_RIGHT && !objWarrior_Girl.inFight){

layer_hspeed(layer_get_id("OakWoodsBackground_1"), warriorSpeed*-5);
layer_hspeed(layer_get_id("OakWoodsBackground_2"), warriorSpeed*-2.5);
layer_hspeed(layer_get_id("OakWoodsBackground_3"), warriorSpeed*-1);


}else{
layer_hspeed(layer_get_id("OakWoodsBackground_1"), 0);
layer_hspeed(layer_get_id("OakWoodsBackground_2"), 0);
layer_hspeed(layer_get_id("OakWoodsBackground_3"), 0);

}