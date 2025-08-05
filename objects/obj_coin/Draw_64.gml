/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 143B8F67
/// @DnDArgument : "obj" "obj_player_cat"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_player_cat"
var l143B8F67_0 = false;l143B8F67_0 = instance_exists(obj_player_cat);if(!l143B8F67_0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1E8D8D49
	/// @DnDParent : 143B8F67
	exit;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 7761D537
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7792D388
/// @DnDArgument : "font" "open_sans"
/// @DnDSaveInfo : "font" "open_sans"
draw_set_font(open_sans);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4E2BA848
/// @DnDArgument : "x" "-30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-15"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Emeralds:" "
/// @DnDArgument : "var" "obj_playerz"
draw_text(x + -30, y + -15, string("Emeralds:" ) + string(obj_playerz));