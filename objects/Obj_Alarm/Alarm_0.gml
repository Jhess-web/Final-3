/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0DDE5B80
/// @DnDDisabled : 1
/// @DnDArgument : "var" "_countdown"
/// @DnDArgument : "var_temp" "1"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40BC024A
/// @DnDDisabled : 1
/// @DnDArgument : "var" "_countdown"
/// @DnDArgument : "op" "1"
/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2B7940BA
/// @DnDDisabled : 1
/// @DnDParent : 40BC024A
/// @DnDArgument : "steps" "_countdown"
/// @DnDArgument : "steps_relative" "1"


/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 253436D4
/// @DnDDisabled : 1
/// @DnDParent : 40BC024A