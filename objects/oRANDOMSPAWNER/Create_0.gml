/// @description Insert description here
// You can write your code in this editor
var spawners = 4 // HOW MANY SPAWNPOINTS
var i;
for (i = 0; i < spawners; i += 1){
var xx = random_range(0,room_width);
var yy = random_range(0,room_height);
instance_create_layer(xx,yy ,"Instances",oTESTENEMYSPAWNER);
}

