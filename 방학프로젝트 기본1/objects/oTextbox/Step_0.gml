/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var _arr = messages[| messageID];

var _text = _arr[MSG.TEXT];

messageText = string_copy(_text, 1, messageChar);

if (messageChar <= string_length(_text)) messageChar += messageSpeed;

else if (keyboard_check_pressed(vk_space)) {
	if (messageID < ds_list_size(messages) - 1) {
		messageID++;
		messageChar = 0;
	}
	
	else {
		instance_destroy();
	}
}