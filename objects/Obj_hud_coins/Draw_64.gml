/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4A5AD8DA
/// @DnDArgument : "obj" "obj_bert"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_bert"
var l4A5AD8DA_0 = false;l4A5AD8DA_0 = instance_exists(obj_bert);if(!l4A5AD8DA_0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 043527D0
	/// @DnDParent : 4A5AD8DA
	exit;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4AE596A7
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 30F4EFE8
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 59433AC1
/// @DnDArgument : "x" "10"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-30"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Coins: ""
/// @DnDArgument : "var" "obj_bert.coins"
draw_text(x + 10, y + -30, string("Coins: ") + string(obj_bert.coins));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 43CDCE38
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l43CDCE38_0=($FF000000 >> 24);
draw_set_alpha(l43CDCE38_0 / $ff);