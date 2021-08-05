//call: [objekt, zeit] execvm "scripts\ambientsounds.sqf"
//use invisible helipad as source of sound, place about 1000m from your players away and make sure they are unable to reach the helipad within the misson.

if (!isserver) exitwith {};

params["_trigger", "_time"];
_starttime = time;




while {time < (_starttime + _time)} do {

_filename = selectrandom [
"A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions1.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions2.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions3.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions4.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_explosions5.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight1.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight2.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight3.wss",
"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight4.wss"
];
playsound3D [_filename, _trigger, false, getpos _trigger, 5, 1, 0];
_sound = (getpos _trigger) nearestobject "#soundonvehicle";
waituntil {sleep 0.5; isNull _sound};
sleep random [7, 10, 30];
};

