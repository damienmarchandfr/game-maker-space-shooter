// Create a laser
var _player = instance_find(o_player_ship,0)

if(!_player) exit

var _distance = point_distance(self.x,self.y,_player.x,_player.y)

if(_distance > self.attack_range) {alarm[0] = self.fire_rate}

var _direction = point_direction(self.x,self.y,_player.x,_player.y)

var _laser = instance_create_layer(self.x,self.y,"Instances",o_enemy_laser)
_laser.speed = 2
_laser.image_angle = _direction
_laser.direction = _direction


// Reset alarm
alarm[0] = self.fire_rate
