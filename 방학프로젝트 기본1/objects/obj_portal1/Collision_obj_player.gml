/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다



if (keyboard_check_pressed(ord("F")))
{
	if(room == villeage){
		room_goto(forest1);
		obj_camera.x = 200;
		obj_camera.y = 300;
		obj_player.x = 200;
		obj_player.y = 300;


	}
	else if (room == forest1){
		room_goto(villeage);
		obj_camera.x = 1250;
		obj_camera.y = 250;
		obj_player.x = 1250;
		obj_player.y = 250;
	}
}