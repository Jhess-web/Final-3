/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3DFED464
/// @DnDDisabled : 1
/// @DnDArgument : "var" "_countdown"
/// @DnDArgument : "var_temp" "1"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55B4D995
/// @DnDDisabled : 1
/// @DnDArgument : "var" "_countdown"
/// @DnDArgument : "op" "1"
/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2F50EAEE
/// @DnDDisabled : 1
/// @DnDParent : 55B4D995
/// @DnDArgument : "steps" "_countdown"
/// @DnDArgument : "steps_relative" "1"


/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 39ADA553
/// @DnDDisabled : 1
/// @DnDParent : 55B4D995