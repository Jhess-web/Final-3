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