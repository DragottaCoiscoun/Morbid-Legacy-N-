/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 21EBB8C3
/// @DnDComment : original $(13_10)
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right)-keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 679CE580
/// @DnDArgument : "expr" "keyboard_check(vk_left)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) < -0.2)"
/// @DnDArgument : "var" "controls_input_left"
controls_input_left = keyboard_check(vk_left)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) < -0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 219FE316
/// @DnDArgument : "expr" "keyboard_check(vk_right)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) > 0.2)"
/// @DnDArgument : "var" "controls_input_right"
controls_input_right = keyboard_check(vk_right)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) > 0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5438B139
/// @DnDArgument : "expr" "controls_input_right - controls_input_left"
/// @DnDArgument : "var" "move_x"
move_x = controls_input_right - controls_input_left;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 023CCE4F
/// @DnDArgument : "expr" "move_x*walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x*walk_speed;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 348D5B09
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1782E57B
/// @DnDComment : if we are on the ground or within the trees$(13_10)
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l1782E57B_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l1782E57B_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B334D43
	/// @DnDParent : 1782E57B
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 36DDB22A
	/// @DnDParent : 1782E57B
	var l36DDB22A_0;l36DDB22A_0 = keyboard_check_pressed(vk_space);if (l36DDB22A_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17528D1D
		/// @DnDParent : 36DDB22A
		/// @DnDArgument : "var" "jumpboost"
		if(jumpboost == 0){	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
			/// @DnDVersion : 1.1
			/// @DnDHash : 6219D9C7
			/// @DnDParent : 17528D1D
			var l6219D9C7_0 = 0;var l6219D9C7_1 = gp_face4;if(gamepad_is_connected(l6219D9C7_0) && gamepad_button_check_pressed(l6219D9C7_0, l6219D9C7_1)){	/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 623058A2
				/// @DnDInput : 3
				/// @DnDParent : 6219D9C7
				/// @DnDArgument : "function" "gamepad_set_vibration"
				/// @DnDArgument : "arg" "0"
				/// @DnDArgument : "arg_1" "0.7"
				/// @DnDArgument : "arg_2" "0.7"
				gamepad_set_vibration(0, 0.7, 0.7);
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 09AADB07
				/// @DnDParent : 6219D9C7
				/// @DnDArgument : "steps" "15"
				alarm_set(0, 15);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6D07EA8D
				/// @DnDParent : 6219D9C7
				/// @DnDArgument : "expr" "-jump_speed"
				/// @DnDArgument : "var" "move_y"
				move_y = -jump_speed;}}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17FC2A1C
		/// @DnDParent : 36DDB22A
		/// @DnDArgument : "var" "jumpboost"
		/// @DnDArgument : "value" "1"
		if(jumpboost == 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45BF326E
			/// @DnDParent : 17FC2A1C
			/// @DnDArgument : "expr" "-jump_speed*3.5"
			/// @DnDArgument : "var" "move_y"
			move_y = -jump_speed*3.5;}}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7FE1EB27
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78227469
	/// @DnDParent : 7FE1EB27
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 18A0F900
		/// @DnDComment : add gravity$(13_10)
		/// @DnDParent : 78227469
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7DCC62F9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_deathzone"
var l7DCC62F9_0 = instance_place(x + 0, y + 2, [collision_deathzone]);if ((l7DCC62F9_0 > 0)){	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 34842F63
	/// @DnDParent : 7DCC62F9
	room_restart();}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 7A231F73
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,4,0,0,walk_speed,jump_speed);