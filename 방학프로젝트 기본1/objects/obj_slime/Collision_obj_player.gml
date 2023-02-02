/// @description 주인공 공격
// 이 에디터에 코드를 작성할 수 있습니다

//캐릭터 공격
if (state = 0) {
	if (alarm[1] <= 0) {
		global.hp -= 8+(global.level*2);
		if (global.hp >= 0) {
		audio_play_sound(_11_human_damage_3,0,false); // 사운드 추가
		}
	
		if (global.hp>0) {
		alarm[1] = 1*room_speed;
		}
	}
}