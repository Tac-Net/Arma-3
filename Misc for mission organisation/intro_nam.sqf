// nul = execVM "scripts\intro.sqf";
sleep 3;

[
	[
		["Kambodscha,", "<t align = 'right' shadow = '1' size = '1'>%1</t><br/>"],
		["an der Grenze zu Vietnam", "<t align = 'right' shadow = '1' size = '0.7'>%1</t><br/>"],
		[mapGridPosition player, "<t align = 'right' shadow = '1' size = '1'>%1</t><br/>"]
	]
] spawn vn_ms_fnc_sfx_typeText;


sleep 20;

[
	[
		[format ["%1:%2 Uhr, 22. July '69", [daytime,"ARRAY"] call BIS_fnc_timeToString select 0,[daytime,"ARRAY"] call BIS_fnc_timeToString select 1], "<t align = 'right' shadow = '1' size = '0.7'>%1</t><br/>"],
		["Operation BUSHLURKER", "<t align = 'right' shadow = '1' size = '1.3'>%1</t><br/>"],
		["Mission von [TacNet] Max", "<t align = 'right' shadow = '1' size = '0.7'>%1</t>"]
	]
] spawn vn_ms_fnc_sfx_typeText;
