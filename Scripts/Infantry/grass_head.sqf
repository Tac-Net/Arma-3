/* ---> In init.sqf einfügen:
//ACE-Action to collect helmet Camoflage
nul = execVM "scripts\grass_head.sqf";
<--- */

_action = [
    "grass_helmet_act",
    "Tarnmaterial sammeln",
    "",
    {
        if ((stance player) isEqualTo "PRONE") then {
            player playMove "AinvPpneMstpSnonWnonDnon_Putdown_AmovPpneMstpSnonWnonDnon";
        } else {
            player playMove "AinvPknlMstpSnonWnonDnon_medic0";
        };
		
        [5, [], {	
					_grass_obj = ["gm_headgear_foliage_summer_grass_01", "gm_headgear_foliage_summer_grass_02", "gm_headgear_foliage_summer_grass_03", "gm_headgear_foliage_summer_grass_04", "gm_headgear_foliage_summer_forest_02"] call BIS_fnc_selectRandom;
					private _cutter = "Land_ClutterCutter_Medium_F" createVehicle [0,0,0];
					 _cutter setPos (getpos player);
					 player addGoggles _grass_obj;
				}, {}, "Tarnmaterial wird gesammelt"
        ] call ace_common_fnc_progressBar;
		
		//player addGoggles _grass_obj;

    },
    {
        true
    }
] call ace_interact_menu_fnc_createAction;


[(typeOf player), 1, ["ACE_SelfActions", "ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToClass;
