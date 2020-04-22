var target;
var i;
for (i = 0; i < sight_angle ; i += 1)
   {
	target = collision_line(x,y,x + lengthdir_x(sight_len,image_angle - (sight_angle /2) + i), y + lengthdir_y(sight_len,image_angle - (sight_angle /2)+ i),oEnemy,true,true);
   if target != noone {
	return target
	}
   }