/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

//주인공 스탯

global.level = 1;

global.Exp = 0;
global.maxexp = 60;

global.maxhp = global.level*10+90;
global.hp = global.maxhp;

global.maxmp = global.level*10+90;
global.mp = global.maxmp;

global.atk = global.level*3+7;

global.atkspeed = 1.0;

//카메라
view_camera[0] = camera_create_view(0,0,640,360,0,obj_player,-1,-1,640,360)

