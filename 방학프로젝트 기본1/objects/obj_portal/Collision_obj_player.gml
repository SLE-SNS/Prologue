/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다



if (keyboard_check_pressed(ord("F")))
{
	if(room == tutorial){
		room_goto(villeage);
		obj_camera.x = 70;
		obj_camera.y = 130;
		obj_player.x = 70;
		obj_player.y = 130;


	}
	else if (room == villeage){
		room_goto(tutorial);
		obj_camera.x = 1250;
		obj_camera.y = 250;
		obj_player.x = 1250;
		obj_player.y = 250;
	}
}