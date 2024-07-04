var _cam_x	= camera_get_view_x(view_camera[0]);


	
	if(objWarrior_Girl.state == WARRIOR_STATE.RUNNING_RIGHT && !objWarrior_Girl.inFight){

layer_x("OakWoodsBackground_1", _cam_x * -2.3);
layer_x("OakWoodsBackground_2", _cam_x * -0.6);
layer_x("OakWoodsBackground_3", _cam_x * -0.01);

}