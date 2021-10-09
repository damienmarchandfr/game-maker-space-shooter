if(room == r_space){
	#region Player armor
	var _player = instance_find(o_player_ship,0)

	if(!_player){
		draw_sprite(s_armor_strip5,0,self.x_pos,self.y_pos)
	}else{
		_player_armor = _player.armor
		draw_sprite(s_armor_strip5,_player_armor,self.x_pos,self.y_pos)
	}


	#endregion

	#region Player score
	draw_set_halign(fa_right)
	var _score_sprite_width = sprite_get_width(s_score)
	var _score_x = room_width - self.score_margin_right - _score_sprite_width
	var _score_y = self.score_margin_top
	draw_sprite(s_score,0,_score_x,_score_y)

	var _game = instance_find(o_game,0)

	var _game_score = 0
	if(!_game){
		_game_score = 0
	}else{
		_game_score = _game.game_score
	}

	draw_text(_score_x + _score_sprite_width -3,_score_y + 1,string(_game_score))
	draw_set_halign(fa_left)
	#endregion

}else{
	#region Display hight score
	var _game = instance_find(o_game,0)
	
	var _x = room_width -8
	var _y = 8
	
	draw_set_halign(fa_right)
	if(_game){
		draw_text(_x,_y,"Highest score : " + string(_game.hight_score))
	}
	
	draw_set_halign(fa_left)
	#endregion
}