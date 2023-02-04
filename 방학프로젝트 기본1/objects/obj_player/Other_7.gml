/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다



if (state == stateType.dead) {
	image_speed = 0;
	image_index = image_number -1;
	alarm[4] = 1.5*room_speed;
}

else if (state == stateType.attack) {
	state = stateType.idle;
}