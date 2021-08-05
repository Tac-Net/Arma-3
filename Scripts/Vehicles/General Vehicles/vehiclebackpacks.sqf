if (!isserver) exitwith {};

_vehicle = _this select 0;

sleep 5;



_vehicle addWeaponCargoGlobal ["UK3CB_BAF_Javelin_Slung_Tube",  2];
_vehicle addItemCargoGlobal ["UK3CB_BAF_Javelin_CLU", 1];
_vehicle addWeaponCargoGlobal ["rhs_weap_m136_hp", 2];
if !(_vehicle == LAV25_1)then {_vehicle addWeaponCargoGlobal ["rhs_weap_m136_hedp", 2];};
_vehicle addMagazineCargoGlobal ["rhs_mag_30rnd_556x45_M855A1_Stanag",30];
_vehicle addMagazineCargoGlobal ["rhsusf_200rnd_556x45_mixed_soft_pouch",14];
_vehicle addMagazineCargoGlobal ["rhs_mag_m67", 18];
_vehicle addMagazineCargoGlobal ["rhs_mag_an_m8hc", 10];
_vehicle addMagazineCargoGlobal ["rhs_mag_m18_green", 5];
_vehicle addMagazineCargoGlobal ["rhs_mag_m18_red", 5];
_vehicle addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 12];

_vehicle addbackpackCargoGlobal ["ACE_tacticalladder_pack", 1];

if (_vehicle == LAV25_1) then {{_vehicle addbackpackCargoGlobal _x} foreach [["rhsusf_assault_eagleaiIi_ocp", 2],["rhsusf_falconii_mc", 2],["B_TacticalPack_blk", 1]];}
else {{_vehicle addbackpackCargoGlobal _x} foreach [["rhsusf_falconii_coy", 1],["rhsusf_falconii_mc", 2],["B_TacticalPack_blk", 1]];};




sleep 5;
{
	if (typeof _x == "B_TacticalPack_blk") then {
		_x addItemCargoGlobal ["ToolKit", 1];
	};
	if (typeof _x == "rhsusf_falconii_coy") then {
		_x addMagazineCargoGlobal ["rhs_mag_an_m8hc", 3];
		_x addMagazineCargoGlobal ["Democharge_Remote_mag",3];
		_x addItemCargoGlobal ["ACE_EntrenchingTool", 1];
		_x addItemCargoGlobal ["ACE_wirecutter",1];
	};
	if (typeof _x == "rhsusf_falconii_mc") then {

	};
	if (typeof _x == "rhsusf_assault_eagleaiIi_ocp") then {
		_x addItemCargoGlobal ["ACE_elasticBandage",30];
		_x addItemCargoGlobal ["ACE_packingBandage",20];
		_x addItemCargoGlobal ["ACE_quikclot",20];
		_x addItemCargoGlobal ["ACE_morphine",20];
		_x addItemCargoGlobal ["ACE_epinephrine",10];
		_x addItemCargoGlobal ["ACE_salineIV",6];
		_x addItemCargoGlobal ["ACE_salineIV_500",6];
		_x addItemCargoGlobal ["ACE_salineIV_250",4];
		_x addItemCargoGlobal ["ACE_splint",10];
		_x addItemCargoGlobal ["ACE_tourniquet",4];
		_x addItemCargoGlobal ["ACE_surgicalKit",1];
	};
} forEach (everyBackpack _vehicle);

_crate = "ace_medicalsupplycrate_advanced" createVehicle [0,0,0];
clearweaponcargoglobal _crate;
clearbackpackcargoglobal _crate;
clearmagazinecargoglobal _crate;
clearitemcargoglobal _crate;
_crate addItemCargoGlobal ["ACE_elasticBandage",30];
_crate addItemCargoGlobal ["ACE_packingBandage",20];
_crate addItemCargoGlobal ["ACE_quikclot",20];
_crate addItemCargoGlobal ["ACE_morphine",20];
_crate addItemCargoGlobal ["ACE_epinephrine",10];
_crate addItemCargoGlobal ["ACE_salineIV",6];
_crate addItemCargoGlobal ["ACE_salineIV_500",6];
_crate addItemCargoGlobal ["ACE_salineIV_250",4];
_crate addItemCargoGlobal ["ACE_splint",10];
_crate addItemCargoGlobal ["ACE_tourniquet",4];
_crate addItemCargoGlobal ["ACE_personalAidKit",1];
[_crate, _vehicle, true] call ace_cargo_fnc_loadItem;

_crate = "Box_NATO_WPSLaunch_F" createVehicle [0,0,0];
clearweaponcargoglobal _crate;
clearbackpackcargoglobal _crate;
clearmagazinecargoglobal _crate;
clearitemcargoglobal _crate;
_crate addWeaponCargoGlobal ["rhs_weap_m136_hp", 4];
_crate addWeaponCargoGlobal ["rhs_weap_m136_hedp", 4];
[_crate, _vehicle, true] call ace_cargo_fnc_loadItem;

_crate = "Box_NATO_AmmoOrd_F" createVehicle [0,0,0];
clearweaponcargoglobal _crate;
clearbackpackcargoglobal _crate;
clearmagazinecargoglobal _crate;
clearitemcargoglobal _crate;
_crate addMagazineCargoGlobal ["rhs_mag_30rnd_556x45_M855A1_Stanag",30];
_crate addMagazineCargoGlobal ["rhsusf_200rnd_556x45_mixed_soft_pouch",10];
_crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 16];
_crate addMagazineCargoGlobal ["rhs_mag_m67", 20];
_crate addMagazineCargoGlobal ["rhs_mag_an_m8hc", 10];
_crate addMagazineCargoGlobal ["rhs_mag_m18_green", 5];
_crate addMagazineCargoGlobal ["rhs_mag_m18_red", 5];
[_crate, _vehicle, true] call ace_cargo_fnc_loadItem;
		
