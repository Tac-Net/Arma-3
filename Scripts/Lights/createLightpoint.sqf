/*
Scripted by Dominicus1165
https://www.tactical-network.de

USAGE:
Write the following where it needs to be called within a *.sqf.
{ null = [examplePosition, 1, [255, 255, 255], [255,255,255], true] execVM "scripts\createLightpoint.sqf" } remoteExec ["call", 2];
*/

/*
_lightPosition = set item name
_lightBrightness =  any number
_lightColor = array [x,y,z] with rgb values between 0 and 255. This is for things like reflections on weapons. 
_lightAmbientColor = array [x,y,z] with rgb values between 0 and 255. This is the main visual color.
_boolDayLight = true or false if Lightpoint should be visible during the day.
*/
params [["_lightPosition", player], ["_lightBrightness", 1], ["_lightColor", [255, 255, 255]], ["_lightAmbientColor", [255, 255, 255]],  ["_boolDayLight", true]];

private _light = "#lightpoint" createvehicle position _lightPosition;

_light setLightBrightness _lightBrightness;
_light setLightColor _lightColor;
_light setLightAmbient _lightAmbientColor;
_light setLightDayLight _boolDayLight;

/*
EXAMPLES:

Fire
[burningVehicle, 0.07, [255, 20, 10], [255, 20, 0], true]
*/