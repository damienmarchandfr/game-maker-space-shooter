self.image_angle = random(360)
self.image_xscale = self.scale
self.image_yscale = self.scale

repeat (16) {
	var _x = self.x + random_range(-8,8)
	var _y = self.y + random_range(-8,8)
	instance_create_layer(_x,_y,"Effects",o_explosion_chunk)
}

audio_play_sound(a_explode,4,false)

instance_create_layer(self.x,self.y,"Effects",o_screen_shake)


