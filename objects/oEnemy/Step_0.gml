/// @description Insert description here
// You can write your code in this editor

if instance_exists(oPlayerParent)
   {
   var inst;
   inst = instance_nearest(x, y, oPlayerParent);
   mp_potential_step_object(inst.x, inst.y, spd, oSolid);
   image_angle = direction
   }
 
var tar =  instance_place(x,y,oPlayerParent);
instance_destroy(tar);
