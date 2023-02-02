/// @description 주인공 평타 피격
// 이 에디터에 코드를 작성할 수 있습니다
if (state != 2) {
if (alarm[2] <= 0) {
	hp -= global.atk;

	if (hp>0) {
	alarm[2] = 0.5*room_speed;
	sprite_index = Take_hit;
	state = 1;
	
	hsp = irandom_range(-1,1);
	}
	else if (hp<=0) {
		sprite_index = Death;
		state = 2;
		alarm[4] = 0.5*room_speed;
	}
}
}