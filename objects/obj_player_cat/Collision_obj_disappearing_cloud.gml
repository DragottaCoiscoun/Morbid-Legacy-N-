/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2F4B5BB4
/// @DnDArgument : "steps" "15*60"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 15*60);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4F4997BE
/// @DnDApplyTo : other
with(other) instance_destroy();