// by ALIAS 
// null = [_object_name,_life_time,_radius,_damage_inflicted_surround,_kill_vehicle_in_fire,_human,_ground] spawn compile preprocessFile "ALfire\fire.sqf";
// Tutorial: https://www.youtube.com/watch?v=WKakf7yb2WM

/*
* Script MP and SP compatible.
** Script runs on client side only so the server is not loaded with unnecessary tasks. 
*** However mind the number of fires they can still cause frames drop. Test and see what it works for you.

_object_name				- the object name you want to set on fire, you can use "this" if you run the script from init field of the object
_life_time					- seconds, fire will be put off after the time you set for life time
_radius						- meters, works different than in fire.sqf, in this case only determines the radius in which players takes damage from fire, doesn't affect radius of fire
_damage_inflicted_surround	- 0..1, amount of damage you to be inflicted upon objects close to fire, use smaller values and test damage is in loop
_kill_vehicle_in_fire		- boolean, true if you want the vehicle blowing up when fire is gone, false if you want just to delete the vehicle
_human						- boolean, true if the object set on fire is a footmobile, false if is an object (buildings, wrecks, vehicles etc)
_ground 					-"" or "small"
*/

if (!hasInterface) exitWith {};

_obj 						= _this select 0;
_life_time					= _this select 1;
_radius						= _this select 2;
_kill_vehicle_in_fire		= _this select 3;
_human						= _this select 4;
_ground						= _this select 5;

if (_ground=="small") then {

hint "missing";

} else {

[[[_life_time, _obj,_kill_vehicle_in_fire],"scripts\fire\ALfire\vek_svr.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;

// foc
_flacari = "#particlesource" createVehicleLocal (getPosATL _obj);
_flacari setParticleCircle [_radius-_radius/8, [-1, 1, -1]];
_flacari setParticleRandom [0.5, [0.25, 0.25, 0], [0.175, 0.175, 0.1], 5, 0.15, [0, 0, 0, 0.1], 0.5, 0];
_flacari setParticleParams [["\A3\data_f\cl_exp", 1, 0, 1], "", "Billboard", 1, 3, [0, 0, 0], [0.5,-0.5, 2], 50, 10, 7.9, 0.1, [_radius/2+2,_radius/2+1,_radius/2+0.5], [[1, 1, 1, 0], [1, 1, 1, 1], [0, 0, 0, 0]], [0.02], 1, 0, "", "", _obj];
_flacari setDropInterval 0.05;


// refract
_caldura = "#particlesource" createVehicleLocal (getPosATL _obj);
_caldura setParticleCircle [_radius+1, [0, 0, 0]];
_caldura setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_caldura setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract.p3d", 1, 0, 1], "", "Billboard", 1, 7, [0, 0, 0], [0, 0, 0.75], 30, 10.5, 7.9, 0.2, [_radius/2+3,_radius/2+2,_radius/2+1], [[0.1, 0.1, 0.1, 0.1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 0, "", "", _obj, /*angle*/ 1,true,/*bounce factor*/1,/*emissiveColor*/[[0,0,0,0]]];
_caldura setDropInterval 0.1;


// fum
_fum = "#particlesource" createVehicleLocal (getPosATL _obj);
_fum setParticleCircle [_radius+5, [0, 0, 0]];
_fum setParticleRandom [30, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_fum setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 60, [0, 0, 0], [0, 0, 0.75], 50, 10, 7.9, 0.1, [_radius/2+1.5,_radius/2+2.5,_radius/2+4,_radius/2+7,_radius/2+9,_radius/2+15], [[0, 0, 0, 0.5], [0, 0, 0, 1], [0.01, 0.01, 0.01, 0.8], [0, 0, 0, 0.9], [0.01, 0.01, 0.01, 0.5], [0, 0, 0, 0.1]], [0.08], 1, 0, "", "", _obj];
_fum setDropInterval 0.1;


_lite= [_obj,_radius] spawn {
		// lumina
		_objt = _this select 0;
		_radiust = _this select 1;
		_luminafoc = "#lightpoint" createVehicleLocal ([1,1,1]); 
		_luminafoc lightAttachObject [_objt, [0,0,-1]];
//		_luminafoc setLightBrightness 10;
		_luminafoc setLightAmbient [1,0.1,0];
		_luminafoc setLightColor [1,0,0];
		_luminafoc setLightUseFlare true;		
//		_luminafoc setLightAttenuation [/*start*/ 1, /*constant*/100, /*linear*/ 300, /*quadratic*/ 1, /*hardlimitstart*/2,/* hardlimitend*/500]; 
		_luminafoc setLightDayLight true;
	
	while {alive _objt} do {
	_luminafoc setLightBrightness 8+ random 1;
	_luminafoc setLightAttenuation [/*start*/ _radiust+random 0.5, /*constant*/90+random 10, /*linear*/ 290+random 10, /*quadratic*/ 1, /*hardlimitstart*/1+random 0.5,/* hardlimitend*/500]; 
	sleep 0.1;
	};
	
	deletevehicle _luminafoc;
	
};

while {alive _obj} do {
	if (_human) then {
	_obj say3d ["tipat",300];
	};

	if !(_human) then {
	_obj say3d ["furnal",300];
	};
	sleep 3.5;
};

waitUntil {!alive _obj};


	deletevehicle _flacari;
	deletevehicle _fum;
	deletevehicle _caldura;

};
