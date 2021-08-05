/* ---> in der init.sqf

waste = [] call compile preprocessFileLineNumbers "scripts\acre_channel.sqf";

<--- */


["ACRE_PRC148", "default", "example1"] call acre_api_fnc_copyPreset;
["ACRE_PRC152", "default", "example1"] call acre_api_fnc_copyPreset;
["ACRE_PRC117F", "default", "example1"] call acre_api_fnc_copyPreset;


["ACRE_PRC152", "default", 1, "description", "KANAL01"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 2, "description", "KANAL02"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 3, "description", "KANAL03"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 4, "description", "KANAL04"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 5, "description", "KANAL05"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 6, "description", "KANAL06"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC148", "default", 1, "label", "KANAL01"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 2, "label", "KANAL02"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 3, "label", "KANAL03"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 4, "label", "KANAL04"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 5, "label", "KANAL05"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "default", 6, "label", "KANAL06"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC117F", "default", 1, "name", "KANAL01"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 2, "name", "KANAL02"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 3, "name", "KANAL03"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 4, "name", "KANAL04"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 5, "name", "KANAL05"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 6, "name", "KANAL06"] call acre_api_fnc_setPresetChannelField;