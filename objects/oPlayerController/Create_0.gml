/// @description Insert description here
// You can write your code in this editor


//list with partymembers 
//partylist = ds_list_create();//import team 
teaminfo = ds_grid_create(4,4);//create grid of teammembers for ingame

//slot1
ds_grid_add(teaminfo,1,0,sScientistPort);
ds_grid_add(teaminfo,2,0,"Alia");
ds_grid_add(teaminfo,3,0,oScientist);
//slot2
ds_grid_add(teaminfo,1,1,sSoldierPort);
ds_grid_add(teaminfo,2,1,"Rion");
ds_grid_add(teaminfo,3,1,oSoldier);
//slot3
ds_grid_add(teaminfo,1,2,sSoldierPort);
ds_grid_add(teaminfo,2,2,"Odin");
ds_grid_add(teaminfo,3,2,oSoldier);
//slot4
ds_grid_add(teaminfo,1,3,sSoldierPort);
ds_grid_add(teaminfo,2,3,"Taran");
ds_grid_add(teaminfo,3,3,oSoldier);


//simple loop to spawn party when map starts
var i;
for (i = 0; i < ds_grid_height(teaminfo); i += 1){
var teamid = instance_create_layer(x + lengthdir_x(60,90 * i), y + lengthdir_y(100, 90 * i),"Instances",teaminfo[# 3,i]);
ds_grid_add(teaminfo,0,i,teamid);

}


//start with scientist selected:
active_pawn = teaminfo[# 0,0];
active_pawn.selected =true;

instance_create_layer(x,y,"Instances",oViewCamera)
cam1 = camera_set_view_target(view_camera[0],oViewCamera);


