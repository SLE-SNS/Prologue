/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다






if (global.hp >= 0) {
	audio_play_sound(_11_human_damage_3,0,false);
	global.hp -= 12+(global.level*2);
	instance_destroy();
}