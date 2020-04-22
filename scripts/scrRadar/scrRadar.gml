// You can write your code in this editor
//Setup Variables
var check = 0; 
var dotsize = 4; //size of radardots
var radarrange = 2000;

//These two variables are the position of the center of the radar relative to the view
//(This puts it in the bottom left corner of a view that is 640 by 640 pixels)
var radarx = 960;
var radary = 900;

draw_set_color(c_green); //This sets the color to display enemies on the radar/mini-map.
//draw_circle(radarx,radary,110,true);
//draw_circle_color(radarx,radary,dotsize,c_white,c_white,false);
while(check < instance_number(oEnemy)) //While the code has not yet tested the locations of every enemy.
{
var inst = instance_find(oEnemy, check); //Locates one of the enemy instances. The second number of the function
if (distance_to_object(inst) <= radarrange) //This sees if the selected instance is within the range of the radar
  {
  //These two (drawx and drawy) find the relative position the enemy is to the player and scales it down.
var  drawx = (inst.x-x)/20;
var  drawy = (inst.y-y)/20;
  draw_circle(radarx+drawx, radary+drawy, dotsize, false); //This draws a dot in the right spot on the radar
  }
check += 1; //This increments check to retest for the next instance, so long as the while loop remains true.
}
draw_set_color(c_white);