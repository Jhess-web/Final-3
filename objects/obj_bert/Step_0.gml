/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 01DED14C
/// @DnDArgument : "expr" "keyboard_check(vk_left)||(gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh)<-0.2))"
/// @DnDArgument : "var" "controls_input_left"
controls_input_left = keyboard_check(vk_left)||(gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh)<-0.2));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 14708CE1
/// @DnDArgument : "expr" "keyboard_check(vk_right)||(gamepad_button_check(0,gp_padr)||(gamepad_axis_value(0,gp_axislh)>0.2))"
/// @DnDArgument : "var" "controls_input_right"
controls_input_right = keyboard_check(vk_right)||(gamepad_button_check(0,gp_padr)||(gamepad_axis_value(0,gp_axislh)>0.2));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 192B67AC
/// @DnDArgument : "expr" "controls_input_right-controls_input_left"
/// @DnDArgument : "var" "move_x"
move_x = controls_input_right-controls_input_left;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D4FD315
/// @DnDArgument : "expr" "move_x*walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x*walk_speed;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 00A7C56F
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2FBF0F42
/// @DnDComment : on ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Obj_platform_parent"
/// @DnDSaveInfo : "object" "Obj_platform_parent"
var l2FBF0F42_0 = instance_place(x + 0, y + 2, [Obj_platform_parent]);if ((l2FBF0F42_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78AA31D1
	/// @DnDComment : Landed reset y
	/// @DnDParent : 2FBF0F42
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7148B922
	/// @DnDParent : 2FBF0F42
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "Double_jump"
	Double_jump = 2;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A800DA2
	/// @DnDParent : 2FBF0F42
	/// @DnDArgument : "var" "Double_jump_mode"
	/// @DnDArgument : "value" "1"
	if(Double_jump_mode == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37390908
		/// @DnDComment : how many jumps
		/// @DnDParent : 2A800DA2
		/// @DnDArgument : "var" "Double_jump"
		/// @DnDArgument : "op" "2"
		if(Double_jump > 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 1D74D3C0
			/// @DnDParent : 37390908
			var l1D74D3C0_0;l1D74D3C0_0 = keyboard_check_pressed(vk_space);if (l1D74D3C0_0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 46A7C48F
				/// @DnDParent : 1D74D3C0
				/// @DnDArgument : "expr" "-jump_speed"
				/// @DnDArgument : "var" "move_y"
				move_y = -jump_speed;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5990E7D6
				/// @DnDParent : 1D74D3C0
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "Double_jump"
				Double_jump += -1;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 2559BBBB
				/// @DnDParent : 1D74D3C0
				/// @DnDArgument : "soundid" "Sound1"
				/// @DnDSaveInfo : "soundid" "Sound1"
				audio_play_sound(Sound1, 0, 0, 1.0, undefined, 1.0);}}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 09548968
	/// @DnDParent : 2FBF0F42
	else{	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 2A185306
		/// @DnDParent : 09548968
		var l2A185306_0;l2A185306_0 = keyboard_check_pressed(vk_space);if (l2A185306_0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 3BA7E802
			/// @DnDParent : 2A185306
			/// @DnDArgument : "soundid" "Sound1"
			/// @DnDSaveInfo : "soundid" "Sound1"
			audio_play_sound(Sound1, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F346916
			/// @DnDParent : 2A185306
			/// @DnDArgument : "expr" "-jump_speed"
			/// @DnDArgument : "var" "move_y"
			move_y = -jump_speed;}}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 34031E01
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79823FC9
	/// @DnDParent : 34031E01
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 02B7AAC0
		/// @DnDParent : 79823FC9
		/// @DnDArgument : "expr" "2.5"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 2.5;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C0DA861
	/// @DnDParent : 34031E01
	/// @DnDArgument : "var" "Double_jump_mode"
	/// @DnDArgument : "value" "1"
	if(Double_jump_mode == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 08B370A2
		/// @DnDParent : 2C0DA861
		/// @DnDArgument : "var" "Double_jump"
		/// @DnDArgument : "op" "2"
		if(Double_jump > 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 66112463
			/// @DnDParent : 08B370A2
			var l66112463_0;l66112463_0 = keyboard_check_pressed(vk_space);if (l66112463_0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2F1AC0F6
				/// @DnDParent : 66112463
				/// @DnDArgument : "expr" "-jump_speed"
				/// @DnDArgument : "var" "move_y"
				move_y = -jump_speed;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 5D8A3835
				/// @DnDParent : 66112463
				/// @DnDArgument : "soundid" "Sound1"
				/// @DnDSaveInfo : "soundid" "Sound1"
				audio_play_sound(Sound1, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7D4681B3
				/// @DnDParent : 66112463
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "Double_jump"
				Double_jump += -1;}}}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 1A678EEA
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "Obj_platform_parent"
/// @DnDSaveInfo : "object" "Obj_platform_parent"
move_and_collide(move_x, move_y, Obj_platform_parent,4,0,0,walk_speed,jump_speed);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 493FEF62
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_Temp_Tiles_death_zone"
var l493FEF62_0 = instance_place(x + 0, y + 2, [collision_Temp_Tiles_death_zone]);if ((l493FEF62_0 > 0)){	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7296E98A
	/// @DnDParent : 493FEF62
	room_restart();}