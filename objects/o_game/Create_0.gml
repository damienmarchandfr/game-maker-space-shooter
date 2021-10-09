audio_play_sound(a_music,5,true)

// Load file
ini_open("data.prout")
self.hight_score = ini_read_real("scores","highest",0)
ini_close()