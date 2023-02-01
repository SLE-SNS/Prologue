/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다



if (keyboard_check_pressed(ord("F")))
{
	audio_play_sound(_88_Teleport_02,0,false); // 사운드 추가
	if(room == cave){
		room_goto(castle);
		obj_camera.x = 80;
		obj_camera.y = 360;
		obj_player.x = 80;
		obj_player.y = 360;


	}
	else if (room == castle){
		room_goto(cave);
		obj_camera.x = 2650;
		obj_camera.y = 160;
		obj_player.x = 2650;
		obj_player.y = 160;
	}
}