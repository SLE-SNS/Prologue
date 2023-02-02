/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

//좌우 이동
if (state = 0) {
if !place_meeting(x+hsp*0.5, y, collisionBox){x += hsp*0.5;}
else 
{
	while (!place_meeting(x+sign(hsp),y,collisionBox))
	do x+=sign(hsp);
	alarm[0] = 1;
}
}

//스프라이트 변경
if (hsp != 0) {image_xscale = -hsp};



//상하 이
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
	
	if (state =1) {
		hsp = 0;
	}
}

if (state = 0) {
	if (random_range(0,100)<1) {
		state = 3;
		sprite_index = Skeleton_Attack;
		image_index = 0;
		alarm[5] = 1.0*room_speed;
	}
}