/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A80E14D
/// @DnDArgument : "expr" "jump_speed * 1.25"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "jump_speed"
jump_speed += jump_speed * 1.25;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 30864D7A
/// @DnDArgument : "steps" "300"
/// @DnDArgument : "steps_relative" "1"
alarm_set(0, 300 + alarm_get(0));

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6F81227A
/// @DnDApplyTo : other
with(other) instance_destroy();