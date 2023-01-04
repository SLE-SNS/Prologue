/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if global.Exp >= global.maxexp
{
	global.Exp =0;
	global.level +=1;

	global.hp=global.maxhp;
	global.mp=global.maxmp;

	global.maxexp=global.level*60;
}