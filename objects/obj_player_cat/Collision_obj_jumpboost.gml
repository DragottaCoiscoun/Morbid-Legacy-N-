/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0DFFE845
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "jumpboost"
jumpboost = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4C420CE1
/// @DnDArgument : "steps" "30*60"
alarm_set(0, 30*60);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1BBBAF7D
/// @DnDArgument : "colour" "$FF0000FF"
image_blend = $FF0000FF & $ffffff;
image_alpha = ($FF0000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 71BAD7D5
/// @DnDArgument : "soundid" "Powerup_equip"
/// @DnDSaveInfo : "soundid" "Powerup_equip"
audio_play_sound(Powerup_equip, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 386B8BA5
/// @DnDApplyTo : other
with(other) instance_destroy();