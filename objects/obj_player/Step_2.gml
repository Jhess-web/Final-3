/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77BF97DE
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 03373988
	/// @DnDParent : 77BF97DE
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_charcter"
	/// @DnDSaveInfo : "spriteind" "Spr_charcter"
	sprite_index = Spr_charcter;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6DBFC0B8
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4FDB3A80
	/// @DnDParent : 6DBFC0B8
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_charcter"
	/// @DnDSaveInfo : "spriteind" "Spr_charcter"
	sprite_index = Spr_charcter;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2B597B86
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l2B597B86_0 = instance_place(x + 0, y + 2, [collision_tilemap]);
if ((l2B597B86_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 405B6DB8
	/// @DnDParent : 2B597B86
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 35CC4F7D
		/// @DnDParent : 405B6DB8
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_charcter"
		/// @DnDSaveInfo : "spriteind" "Spr_charcter"
		sprite_index = Spr_charcter;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 2E6AB9E3
		/// @DnDParent : 405B6DB8
		/// @DnDArgument : "xscale" "1*abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = 1*abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B459F96
	/// @DnDParent : 2B597B86
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 52476843
		/// @DnDParent : 7B459F96
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_charcter"
		/// @DnDSaveInfo : "spriteind" "Spr_charcter"
		sprite_index = Spr_charcter;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 3CEA0EFD
		/// @DnDParent : 7B459F96
		/// @DnDArgument : "xscale" "-1*abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1*abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54A6ACD9
	/// @DnDParent : 2B597B86
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 368F5575
		/// @DnDParent : 54A6ACD9
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_charcter"
		/// @DnDSaveInfo : "spriteind" "Spr_charcter"
		sprite_index = Spr_charcter;
		image_index += 0;
	}
}