/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(room == startroom || room == sle){
	audio_pause_all();
	audio_play_sound(sound_startroom,1,true);
}
else if(room == tutorial){
	audio_pause_all();
	audio_play_sound(sound_tutorialroom,2,true);
}
else if(room == villeage || room == villeage2){
	audio_pause_all();
	audio_play_sound(sound_villeage,2,true);
}
else if (room == forest1){
	audio_pause_all();
	audio_play_sound(sound_forest1,2,true);
}
else if(room == forest2){
	audio_pause_all();
	audio_play_sound(sound_forest2,2,true);
}
else if (room == cave){
	audio_pause_all();
	audio_play_sound(sound_cave,2,true);
}
else if (room == castle){
	audio_pause_all();
	audio_play_sound(sound_castle,2,true);
}
else if (room == bossroom){
	audio_pause_all();
	audio_play_sound(sound_fight_boss,2,true);
	notend = 1;
}
else if(room == sle2 && notend == 1){
	audio_pause_all();
	audio_play_sound(backtorealism,3,true);
}



