if(self.armor <= 0){
	instance_destroy()
	if(self.score_amount){
		var _game = instance_find(o_game,0)
		if(_game){
			_game.game_score += self.score_amount
		}
	}
}