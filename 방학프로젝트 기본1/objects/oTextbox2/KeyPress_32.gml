/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다



if (alarm[1] <= 0) {
nextroom += 1;
alarm[1] = 0.5 * room_speed;
}

if (nextroom = 7) {
	if (!instance_exists(obj_boss)) {
		for (var i = 0; i = 0; i++) {
			nextroom += 1;
			alarm[0] = 1.0 * room_speed;
			instance_destroy();
			var inst = instance_create_layer(x+500, y+150, "Instances", obj_boss);
			instance_destroy(obj_beforeboss);
		}
	}
}