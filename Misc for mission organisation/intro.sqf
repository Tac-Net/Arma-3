// nul = execVM "scripts\intro.sqf";
sleep 3;

[
	[
		["Takistan,", "<t align = 'right' shadow = '1' size = '0.7' font='PuristaBold'>%1</t><br/>"],
		["PROVINZ FERUZ ABAD", "<t align = 'right' shadow = '1' size = '1'>%1</t><br/>"],
		[mapGridPosition player, "<t align = 'right' shadow = '1' size = '0.7'>%1</t><br/>"]
	]
] spawn BIS_fnc_typeText;


sleep 12;


[
	[
		[format ["06%1%2Daug20", [daytime,"ARRAY"] call BIS_fnc_timeToString select 0,[daytime,"ARRAY"] call BIS_fnc_timeToString select 1], "<t align = 'right' shadow = '1' size = '0.7'>%1</t><br/>"],
		["Sweeping Week", "<t align = 'right' shadow = '1' size = '1.3' font='PuristaBold'>%1</t><br/>"],
		["Mission von [TacNet] Insect", "<t align = 'right' shadow = '1' size = '0.7'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

