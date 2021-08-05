//in der initPlayerLocal.sqf
// [player] execVM "scripts\headset.sqf";

_aufrufer = _this select 0;

_aufrufer addEventHandler ["GetInMan", 
			{
			params ["_unit", "_role", "_vehicle", "_turret"];
			_unit = _this select 0;
			_role = _this select 1;
			_vehicle = _this select 2;
			_turret = _this select 3;
			if (headgear _unit == "gm_ge_headgear_beret_blk_armor") then {_unit addHeadgear "gm_ge_headgear_beret_crew_blk_armor";};
			if (headgear _unit == "rhs_beanie_green") then {
			_unit addHeadgear "gm_ge_headgear_crewhat_80_blk";};
			if (headgear _unit == "gm_ge_headgear_m92_cover_glasses_win") then {_unit addHeadgear "gm_ge_headgear_crewhat_80_blk";};
			}
							];

_aufrufer addEventHandler ["GetOutMan", 
			{
			params ["_unit", "_role", "_vehicle", "_turret"];
			_unit = _this select 0;
			_role = _this select 1;
			_vehicle = _this select 2;
			_turret = _this select 3;
			if (typeOf _vehicle == "gm_ge_army_fuchsa0_engineer" AND headgear _unit == "gm_ge_headgear_crewhat_80_blk")
			then {_unit addHeadgear "gm_ge_headgear_m92_cover_glasses_win";};
			if (headgear _unit == "gm_ge_headgear_beret_crew_blk_armor") then {_unit addHeadgear "gm_ge_headgear_beret_blk_armor";};
			if (headgear _unit == "gm_ge_headgear_crewhat_80_blk") then {
			_unit addHeadgear "rhs_beanie_green";};
			
			}
							];
