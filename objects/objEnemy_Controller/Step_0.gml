/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DA3E4FB
/// @DnDArgument : "var" "instance_exists(enemy_id)"
/// @DnDArgument : "value" "false"
if(instance_exists(enemy_id) == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 037F7C09
	/// @DnDParent : 1DA3E4FB
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "enemy_exists"
	enemy_exists = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78680E63
	/// @DnDParent : 1DA3E4FB
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "inFight"
	inFight = false;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 167DB5CA
/// @DnDArgument : "var" "player_stats.distance_traveled"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "enemy_spawn_distance"
if(player_stats.distance_traveled >= enemy_spawn_distance)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 2D606514
	/// @DnDParent : 167DB5CA
	/// @DnDArgument : "var" "random_int"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "5"
	random_int = floor(random_range(1, 5 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F335838
	/// @DnDParent : 167DB5CA
	/// @DnDArgument : "var" "random_int"
	/// @DnDArgument : "value" "5"
	if(random_int == 5)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 523B26AD
		/// @DnDParent : 4F335838
		/// @DnDArgument : "xpos" "objEnemy_Spawner.x"
		/// @DnDArgument : "ypos" "objEnemy_Spawner.y"
		/// @DnDArgument : "var" "enemy_id"
		/// @DnDArgument : "objectid" "objSkeleton_Mace"
		/// @DnDArgument : "layer" ""Enemy_Instances""
		/// @DnDSaveInfo : "objectid" "objSkeleton_Mace"
		enemy_id = instance_create_layer(objEnemy_Spawner.x, objEnemy_Spawner.y, "Enemy_Instances", objSkeleton_Mace);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 292B78F5
	/// @DnDParent : 167DB5CA
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 77125FF0
		/// @DnDParent : 292B78F5
		/// @DnDArgument : "xpos" "objEnemy_Spawner.x"
		/// @DnDArgument : "ypos" "objEnemy_Spawner.y"
		/// @DnDArgument : "var" "enemy_id"
		/// @DnDArgument : "objectid" "objMalevolent_Eye"
		/// @DnDArgument : "layer" ""Enemy_Instances""
		/// @DnDSaveInfo : "objectid" "objMalevolent_Eye"
		enemy_id = instance_create_layer(objEnemy_Spawner.x, objEnemy_Spawner.y, "Enemy_Instances", objMalevolent_Eye);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3188CE74
	/// @DnDParent : 167DB5CA
	/// @DnDArgument : "expr" "enemy_spawn_distance_orig+random_range(-50, 50)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "enemy_spawn_distance"
	enemy_spawn_distance += enemy_spawn_distance_orig+random_range(-50, 50);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21A40EE3
	/// @DnDParent : 167DB5CA
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "enemy_exists"
	enemy_exists = true;
}