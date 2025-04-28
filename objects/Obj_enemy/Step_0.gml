/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 405B16EA
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Obj_platform_parent"
/// @DnDSaveInfo : "object" "Obj_platform_parent"
var l405B16EA_0 = instance_place(x + 0, y + 2, [Obj_platform_parent]);if ((l405B16EA_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20167339
	/// @DnDDisabled : 1
	/// @DnDParent : 405B16EA
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "move_y"


	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 27357811
	/// @DnDParent : 405B16EA
	/// @DnDArgument : "x" "x+(25*sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "Obj_platform_parent"
	/// @DnDSaveInfo : "object" "Obj_platform_parent"
	var l27357811_0 = instance_place(x+(25*sign(move_x)), y + 0, [Obj_platform_parent]);if ((l27357811_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29E12867
		/// @DnDParent : 27357811
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += -jump_speed;}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 3DFF835B
	/// @DnDParent : 405B16EA
	/// @DnDArgument : "x" "x+(30*sign(move_x))"
	/// @DnDArgument : "y" "y+24"
	/// @DnDArgument : "object" "Obj_platform_parent"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "Obj_platform_parent"
	var l3DFF835B_0 = instance_place(x+(30*sign(move_x)), y+24, [Obj_platform_parent]);if (!(l3DFF835B_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16BE2815
		/// @DnDParent : 3DFF835B
		/// @DnDArgument : "expr" "move_x*-1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x*-1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16B091E1
		/// @DnDParent : 3DFF835B
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3D210592
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D00834A
	/// @DnDParent : 3D210592
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19FB8319
		/// @DnDParent : 3D00834A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 069463CE
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "Obj_platform_parent"
/// @DnDSaveInfo : "object" "Obj_platform_parent"
move_and_collide(move_x, move_y, Obj_platform_parent,4,0,0,walk_speed,jump_speed);