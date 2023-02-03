/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다




	if (!instance_exists(oTextbox)) {
		var _tb = instance_create_layer(0, 0, "Instances", oTextbox);
		
		var _list = _tb.messages;
		
		for (var i=0; i<array_length_1d(msg); i++) {
			var _arr = msg[i];
			
			ds_list_add(_list, _arr);
		}
	}