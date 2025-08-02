/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3AF5C9BA
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0CD74CFA
	/// @DnDParent : 3AF5C9BA
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_niku_jump"
	/// @DnDSaveInfo : "spriteind" "spr_niku_jump"
	sprite_index = spr_niku_jump;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1103CE68
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 37C328AF
	/// @DnDParent : 1103CE68
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_niku_idle"
	/// @DnDSaveInfo : "spriteind" "spr_niku_idle"
	sprite_index = spr_niku_idle;
	image_index += 1;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 0BA7A9A1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l0BA7A9A1_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l0BA7A9A1_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DEC34C5
	/// @DnDParent : 0BA7A9A1
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 545F923E
		/// @DnDParent : 1DEC34C5
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_niku_walk"
		/// @DnDSaveInfo : "spriteind" "spr_niku_walk"
		sprite_index = spr_niku_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 0BF5823C
		/// @DnDParent : 1DEC34C5
		/// @DnDArgument : "xscale" "-1*abs(image_scale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1*abs(image_scale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7ADD4E26
	/// @DnDParent : 0BA7A9A1
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2A4B1A26
		/// @DnDParent : 7ADD4E26
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_niku_walk"
		/// @DnDSaveInfo : "spriteind" "spr_niku_walk"
		sprite_index = spr_niku_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 35ACE006
		/// @DnDParent : 7ADD4E26
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 462A4291
	/// @DnDParent : 0BA7A9A1
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6250546F
		/// @DnDParent : 462A4291
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_niku_idle"
		/// @DnDSaveInfo : "spriteind" "spr_niku_idle"
		sprite_index = spr_niku_idle;
		image_index += 0;}}