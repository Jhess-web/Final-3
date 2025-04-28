/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02BE4E65
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5AAE2F9A
	/// @DnDParent : 02BE4E65
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_enemy_jump"
	/// @DnDSaveInfo : "spriteind" "Spr_enemy_jump"
	sprite_index = Spr_enemy_jump;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6CC075B1
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4AF90905
	/// @DnDParent : 6CC075B1
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_enemy"
	/// @DnDSaveInfo : "spriteind" "Spr_enemy"
	sprite_index = Spr_enemy;
	image_index += 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 25C5433A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Obj_platform_parent"
/// @DnDSaveInfo : "object" "Obj_platform_parent"
var l25C5433A_0 = instance_place(x + 0, y + 2, [Obj_platform_parent]);if ((l25C5433A_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FBBC337
	/// @DnDParent : 25C5433A
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 55D00F28
		/// @DnDParent : 3FBBC337
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_enemy_walk"
		/// @DnDSaveInfo : "spriteind" "Spr_enemy_walk"
		sprite_index = Spr_enemy_walk;
		image_index += 0;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44CED206
	/// @DnDParent : 25C5433A
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0377B0CC
		/// @DnDParent : 44CED206
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_enemy_walk"
		/// @DnDSaveInfo : "spriteind" "Spr_enemy_walk"
		sprite_index = Spr_enemy_walk;
		image_index += 0;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4AFC3112
	/// @DnDParent : 25C5433A
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 265CBD67
		/// @DnDParent : 4AFC3112
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_enemy"
		/// @DnDSaveInfo : "spriteind" "Spr_enemy"
		sprite_index = Spr_enemy;
		image_index += 0;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 15D67AAC
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3566998D
	/// @DnDParent : 15D67AAC
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_enemy_walk"
	/// @DnDSaveInfo : "spriteind" "Spr_enemy_walk"
	sprite_index = Spr_enemy_walk;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 51F39ED8
	/// @DnDParent : 15D67AAC
	/// @DnDArgument : "xscale" "1*abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = 1*abs(image_xscale);image_yscale = image_yscale;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F7C2157
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6EE2D213
	/// @DnDParent : 4F7C2157
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_enemy_walk"
	/// @DnDSaveInfo : "spriteind" "Spr_enemy_walk"
	sprite_index = Spr_enemy_walk;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 3D4E5401
	/// @DnDParent : 4F7C2157
	/// @DnDArgument : "xscale" "-1*abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = -1*abs(image_xscale);image_yscale = image_yscale;}