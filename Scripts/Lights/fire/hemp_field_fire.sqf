//trigerActivation = true
/*

0 = thistrigger spawn  
 { 
 waitUntil { {_x inArea _this} count (getpos _this nearObjects ["ACE_G_M14",18]) > 0 };  
    
 nul = [_this, 15] execVM "scripts\hemp_field_fire.sqf";  
 };  

*/

// null = [_object_name,_life_time,_radius,_kill_vehicle_in_fire,_human,_ground] spawn compile preprocessFile "ALfire\fire.sqf";

_location = _this select 0;
_radius = _this select 1;

sleep 6 + Random 3;

{nul = [_X,73,2,true,false, ""] spawn compile preprocessFile "scripts\fire\ALfire\fire.sqf"; } forEach nearestTerrainObjects [_location, ["SMALL TREE"], _radius];

//configfile >> "CfgVehicles" >> "CUP_p_fiberPlant_EP1"
//["CUP_bodlak_group","Base_CUP_Plant","Static","All"]
// CLASSNAME "p_fiberplant_ep1.p3d"
/*
_plants = t_field_1 nearObjects 18;

{_X setDamage 1} forEach _plants class name == "p_fiberplant_ep1.p3d";
*/


//plants = nearestTerrainObjects [player, "SMALL TREE", 10]

//{_X setDamage 1} forEach nearestTerrainObjects [player, ["SMALL TREE"], 18]

/*

0 = thistrigger spawn 
	{
	waitUntil { {_x inArea _this} count (getpos _this nearObjects ["ACE_G_M14",18]) > 0 }; 
   
	nul = [_this, 15] execVM "scripts\hemp_field_fire.sqf"; 
	}; 

*/