/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 24FFD240
/// @DnDArgument : "x" "2"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l24FFD240_0 = instance_place(x + 2, y + 0, [collision_tilemap]);if ((l24FFD240_0 > 0)){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5F8C04D0
	/// @DnDParent : 24FFD240
	/// @DnDArgument : "steps" "15*60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 15*60);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 60CBA6C0
	/// @DnDParent : 24FFD240
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_chimera_attack"
	/// @DnDSaveInfo : "spriteind" "spr_chimera_attack"
	sprite_index = spr_chimera_attack;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 517C8050
	/// @DnDParent : 24FFD240
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "acid_attack"
	acid_attack += 1;}