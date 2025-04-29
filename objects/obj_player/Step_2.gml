/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 259142FA
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 73741A51
	/// @DnDParent : 259142FA
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "player_jump"
	/// @DnDSaveInfo : "spriteind" "player_jump"
	sprite_index = player_jump;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7FF1703E
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6C764E82
	/// @DnDParent : 7FF1703E
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "player_idle"
	/// @DnDSaveInfo : "spriteind" "player_idle"
	sprite_index = player_idle;
	image_index += 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 370D2DB6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l370D2DB6_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l370D2DB6_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F1DE936
	/// @DnDParent : 370D2DB6
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 426997B3
		/// @DnDParent : 4F1DE936
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "player_idle"
		/// @DnDSaveInfo : "spriteind" "player_idle"
		sprite_index = player_idle;
		image_index += 0;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1354DC2D
	/// @DnDParent : 370D2DB6
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3DA8285C
		/// @DnDParent : 1354DC2D
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "player_move"
		/// @DnDSaveInfo : "spriteind" "player_move"
		sprite_index = player_move;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 16C14243
		/// @DnDParent : 1354DC2D
		/// @DnDArgument : "xscale" "1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = 1 * abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56394E7E
	/// @DnDParent : 370D2DB6
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 31D3DE2B
		/// @DnDParent : 56394E7E
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "player_move"
		/// @DnDSaveInfo : "spriteind" "player_move"
		sprite_index = player_move;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 6BE2D915
		/// @DnDParent : 56394E7E
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);image_yscale = image_yscale;}}