/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

//이동
if(state == stateType.idle) {
	var __hsp = keyboard_check(vk_right) - keyboard_check(vk_left);

	if !place_meeting(x+__hsp*mspeed, y, collisionBox){x += __hsp*mspeed;}
	else 
	{
		while (!place_meeting(x+sign(__hsp),y,collisionBox))
		do x+=sign(__hsp);
	}
}

//스프라이트 변경
if(state == stateType.idle) {
	
	if (__hsp != 0) image_xscale = __hsp;

	if (vsp > 0) {sprite_index = adventurer_fall_00;}
	else if (vsp < 0) {sprite_index = adventurer_jump_00;}
	else {sprite_index = adventurer_idle_00;}

	if (vsp = 0) {
		if (keyboard_check(vk_right)) {
			global.dir = 0;
		sprite_index = adventurer_run_00;
		}
		if (keyboard_check(vk_left)) {
			global.dir = 1;
		sprite_index = adventurer_run_00;
		}
		if (keyboard_check_released(vk_right)) {
		sprite_index = adventurer_idle_00;
		}
		if (keyboard_check_released(vk_left)) {
		sprite_index = adventurer_idle_00;
		}
	}
}

//중력
if (vsp < 8) {vsp += grav;}

if !place_meeting(x, y+vsp, collisionBox)
{
	y += vsp;
}
else
{
	while (!place_meeting(x,y+sign(vsp),collisionBox))
	do{
		y+=sign(vsp);
	}
	vsp = 0;
	jump = 0;
}

//점프
if(state == stateType.idle) {
	if keyboard_check_pressed(vk_up)
	{
		if (jump < maxJump) 
		{
		vsp = -12;
		jump++;
		audio_play_sound(_12_human_jump_2,0,false); // 사운드 추가
		}
		audio_play_sound(_12_human_jump_2,0,false); // 사운드 추가
	}
}

//평타 공격
if(state == stateType.idle) {
	if (keyboard_check_pressed(ord("A")))
	{
		state = stateType.attack;
		sprite_index = adventurer_attack2_00;
		image_index = 0;
		var inst = instance_create_layer(x, y, "Instances", normal_attack);
		
		alarm[0] = global.atkspeed * room_speed;
		audio_play_sound(sound_attack,0,false); // 사운드 추가
	}
}

//죽음
if (global.hp<=0) {
	sprite_index = adventurer_die_00;
	state = stateType.dead;
}

//레벨업 이펙트
if (global.Exp>=global.maxexp) {
	var inst = instance_create_layer(x, y, "Instances",levelup_obj);
	audio_play_sound(sound_level_up,0,false); // 사운드 추가
}

//광폭화
if(state == stateType.idle) {
	if (keyboard_check_pressed(ord("S")))
	{
		if (alarm[1] <= 0) {
		berserk = 1;
		global.hp -= 30;
		global.mp -= 30;
		alarm[1] = 20 * room_speed;
		alarm[2] = 7.0*room_speed;
		}
	}
}

if (berserk = 1) {
	atkspeed = 0.1;
	mspeed = 6;
	global.atk = global.level*5+10;
}
else if (berserk = 0)
{
	atkspeed = 1;
	mspeed = 4;
	global.atk = global.level*3+7;
}