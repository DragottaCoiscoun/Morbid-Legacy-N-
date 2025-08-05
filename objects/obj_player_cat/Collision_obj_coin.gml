/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3BBD7A1C
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "coin"
coin += 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2E823CA4
/// @DnDArgument : "soundid" "Coin_pickup"
/// @DnDSaveInfo : "soundid" "Coin_pickup"
audio_play_sound(Coin_pickup, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3AD334FA
/// @DnDApplyTo : other
with(other) instance_destroy();