/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다



if (keyboard_check_pressed(ord("F")))
{
	if(room == forest1){
		room_goto(forest2);
		obj_camera.x = 68;
		obj_camera.y = 280;
		obj_player.x = 68;
		obj_player.y = 280;


	}
	else if (room == forest2){
		room_goto(forest1);
		obj_camera.x = 1840;
		obj_camera.y = 0;
		obj_player.x = 1840;
		obj_player.y = 0;
	}
}