/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54A7C159
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "WARRIOR_STATE.IDLE"
if(state == WARRIOR_STATE.IDLE)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09E8FCAE
	/// @DnDParent : 54A7C159
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "sprWarrior_Idle"
	if(!(sprite_index == sprWarrior_Idle))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 65A822DA
		/// @DnDParent : 09E8FCAE
		/// @DnDArgument : "spriteind" "sprWarrior_Idle"
		/// @DnDSaveInfo : "spriteind" "sprWarrior_Idle"
		sprite_index = sprWarrior_Idle;
		image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B1F3391
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "WARRIOR_STATE.RUNNING_RIGHT"
if(state == WARRIOR_STATE.RUNNING_RIGHT)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B1C953F
	/// @DnDParent : 6B1F3391
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "sprWarrior_Run"
	if(!(sprite_index == sprWarrior_Run))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4A648140
		/// @DnDParent : 7B1C953F
		/// @DnDArgument : "spriteind" "sprWarrior_Run"
		/// @DnDSaveInfo : "spriteind" "sprWarrior_Run"
		sprite_index = sprWarrior_Run;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75C9C3C3
	/// @DnDParent : 6B1F3391
	/// @DnDArgument : "var" "self.image_xscale"
	/// @DnDArgument : "op" "1"
	if(self.image_xscale < 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0EE80FB3
		/// @DnDParent : 75C9C3C3
		/// @DnDArgument : "expr" "-(self.image_xscale)"
		/// @DnDArgument : "var" "self.image_xscale"
		self.image_xscale = -(self.image_xscale);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D2FD4EA
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "WARRIOR_STATE.RUNNING_LEFT"
if(state == WARRIOR_STATE.RUNNING_LEFT)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C6F6551
	/// @DnDParent : 4D2FD4EA
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "sprWarrior_Run"
	if(!(sprite_index == sprWarrior_Run))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 76993A4F
		/// @DnDParent : 5C6F6551
		/// @DnDArgument : "spriteind" "sprWarrior_Run"
		/// @DnDSaveInfo : "spriteind" "sprWarrior_Run"
		sprite_index = sprWarrior_Run;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65CC88B2
	/// @DnDParent : 4D2FD4EA
	/// @DnDArgument : "var" "self.image_xscale"
	/// @DnDArgument : "op" "2"
	if(self.image_xscale > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68330FE3
		/// @DnDParent : 65CC88B2
		/// @DnDArgument : "expr" "-(self.image_xscale)"
		/// @DnDArgument : "var" "self.image_xscale"
		self.image_xscale = -(self.image_xscale);
	}
}