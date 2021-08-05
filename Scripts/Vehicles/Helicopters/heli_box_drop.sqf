//Dropscript von [GR]GEORGE F abgeändert


//wo soll der Drop abgeworfen werden?
//heli_1 ist abwerfender Helikopter

_Pos = getPos heli_1;

sleep 1;

//setPosATL letzer Array-Eintrag ist die Höhe in Metern, heli_1 nicht vergessen anzupassen

_parachute = createVehicle ["B_Parachute_02_F",_Pos, [], 0, "FLY"];
_parachute setPosATL [getPosATL _parachute select 0, getPosATL _parachute select 1, getPosATL heli_1 select 2 -5];

_Cargo = box_hq;
_Cargo setPosATL [getPosATL _parachute select 0, getPosATL _parachute select 1, getPosATL _parachute select 2 - 7];
_Cargo attachTo [_parachute,[0,0,0]];
_Cargo enableSimulation false;


//Nebel beim Abwurf
//_Smoke = "SmokeShellBlue" createVehicle (position _Cargo);
//_Smoke attachTo [_Cargo, [0,0,0]];

waitUntil {getPos _Cargo select 2 < 4};
_vel = velocity _Cargo;
_Cargo setVelocity _vel;

waitUntil {getPos _Cargo select 2 < 0};

detach _Cargo;
_parachute disableCollisionWith _Cargo;

_time = time + 6;
waitUntil {time > _time};       
if (!isNull _parachute) then {deleteVehicle _parachute};


//Nebel am Boden

_Smoke = "SmokeShellBlue" createVehicle (position _Cargo);

_Cargo enableSimulation true;