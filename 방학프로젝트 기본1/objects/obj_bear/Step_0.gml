 /// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

//좌우 이동
if !place_meeting(x+hsp*0.5, y, collisionBox){x += hsp*0.5;}
else 
{
	while (!place_meeting(x+sign(hsp),y,collisionBox))
	do x+=sign(hsp);
	alarm[0] = 1;
}

//스프라이트 변경
if (hsp != 0) {image_xscale = -hsp};

if (state = 0) {
	//if (vsp > 0) {sprite_index = Fall__34x28_;}
	//else if (vsp < 0) {sprite_index = Jump__34x28_;}
	//else {sprite_index = Idle__34x28_;}
	
	if(vsp == 0) sprite_index = Bear_Walk_1;  
}

//상하 이동

/*
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
	if (random_range(0,100)<8) {
		if (jump < maxJump) 
		{
		vsp = -7;
		jump++;
		}
	}
}*/