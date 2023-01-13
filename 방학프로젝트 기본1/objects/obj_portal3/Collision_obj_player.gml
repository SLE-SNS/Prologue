/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (keyboard_check_pressed(ord("F")))
{
	audio_play_sound(_88_Teleport_02,0,false); // 사운드 추가
	if(room == villeage){
		room_goto(villeage2);
		obj_camera.x = 60;
		obj_camera.y = 180;
		obj_player.x = 60;
		obj_player.y = 180;
	}
	else if (room == forest2){
		room_goto(villeage2);
		obj_camera.x = 110;
		obj_camera.y = 137;
		obj_player.x = 110;
		obj_player.y = 137;
	}
	else if (room == villeage2){
		room_goto(forest2);
		obj_camera.x = 2687;
		obj_camera.y = 285;
		obj_player.x = 2687;
		obj_player.y = 285;
	}
}


