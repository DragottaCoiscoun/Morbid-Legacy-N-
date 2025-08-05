/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F4CEB70
/// @DnDArgument : "var" "acid_attack"
/// @DnDArgument : "value" "1"
if(acid_attack == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 55A1900A
	/// @DnDParent : 2F4CEB70
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_acid"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_acid"
	sprite_index = spr_enemy_acid;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3C97D8D7
	/// @DnDApplyTo : {obj_player_cat}
	/// @DnDParent : 2F4CEB70
	with(obj_player_cat) instance_destroy();}