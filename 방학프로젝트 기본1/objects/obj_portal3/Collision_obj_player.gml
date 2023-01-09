/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (keyboard_check_pressed(ord("F")))
{
	if(room == villeage){
		room_goto(villeage2);
		obj_camera.x = 60;
		obj_camera.y = 180;
		obj_player.x = 60;
		obj_player.y = 180;


	}
	else if (room == villeage2){
		room_goto(villeage);
		obj_camera.x = 1050;
		obj_camera.y = 90;
		obj_player.x = 1050;
		obj_player.y = 90;
	}
}


