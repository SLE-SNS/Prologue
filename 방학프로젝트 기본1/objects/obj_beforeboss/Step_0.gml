/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (vsp < 4) {vsp += grav;}

if !place_meeting(x, y+vsp, collisionBox)
{
	y += vsp;
}