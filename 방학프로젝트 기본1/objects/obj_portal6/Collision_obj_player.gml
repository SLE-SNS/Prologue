/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (keyboard_check_pressed(ord("F")))
{
	audio_play_sound(_88_Teleport_02,0,false); // 사운드 추가
	if(room == castle){
		room_goto(bossroom);
		obj_camera.x = 90;
		obj_camera.y = 220;
		obj_player.x = 90;
		obj_player.y = 220;
	}
	
}





