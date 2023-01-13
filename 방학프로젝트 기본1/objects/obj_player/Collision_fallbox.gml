/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


if (alarm[1] <= 0) {
		global.hp -= 8+(global.level*2);
		audio_play_sound(_11_human_damage_3,0,false); // 사운드 추가
	
		if (global.hp>0) {
		alarm[3] = 1*room_speed;
		}
	}

if(room == villeage){
	obj_camera.x = 70;
	obj_camera.y = 130;
	obj_player.x = 70;
	obj_player.y = 130;
}
else if(room == forest1){
	obj_camera.x = 200;
	obj_camera.y = 300;
	obj_player.x = 200;
	obj_player.y = 300;
}
else if(room == forest2){
	obj_camera.x = 68;
	obj_camera.y = 280;
	obj_player.x = 68;
	obj_player.y = 280;
}
else if(room == cave){
	obj_camera.x = 90;
	obj_camera.y = 220;
	obj_player.x = 90;
	obj_player.y = 220;
}