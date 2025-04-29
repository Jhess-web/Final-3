/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A4E6318
/// @DnDArgument : "expr" "walk_speed*3"
/// @DnDArgument : "var" "walk_speed"
walk_speed = walk_speed*3;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 394C29B5
/// @DnDApplyTo : {Obj_Speeder}
with(Obj_Speeder) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 5ABDC23C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "5"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FFFF4314"
effect_create_below(5, x + 0, y + 0, 1, $FFFF4314 & $ffffff);