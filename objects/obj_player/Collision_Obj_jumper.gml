/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72A0BFCF
/// @DnDArgument : "expr" "jump_speed*1.5"
/// @DnDArgument : "var" "jump_speed"
jump_speed = jump_speed*1.5;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 48123AB3
/// @DnDApplyTo : {Obj_jumper}
with(Obj_jumper) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 01D410B9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF2BAAFF"
effect_create_below(0, x + 0, y + 0, 1, $FF2BAAFF & $ffffff);