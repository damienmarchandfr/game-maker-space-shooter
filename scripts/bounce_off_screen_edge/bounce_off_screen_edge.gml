function bounce_off_screen_edge(){
	var _half_width = sprite_get_width(self.sprite_index)/2;
	var _half_height = sprite_get_height(self.sprite_index)/2

	if(self.x < _half_width || self.x > room_width - _half_width){
		self.x = self.xprevious
		self.hspeed = -self.hspeed
	}
	if(self.y < _half_height || self.y > room_height - _half_height){
		self.y = self.yprevious
		self.vspeed = -self.vspeed
	}
}