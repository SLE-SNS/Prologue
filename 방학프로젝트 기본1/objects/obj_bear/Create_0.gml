 /// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


hsp = 1;

grav = 1;

vsp = 0;

maxJump = 2;

jump = 0;

maxhp = 20+(global.level*10);
hp = maxhp;

//0 : idle, 1 : hit, 2 : dead
state = 0;

alarm[0] = random_range(1,2)*room_speed;