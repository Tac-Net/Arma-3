/*
Scripted by Dominicus1165
https://www.tactical-network.de

USAGE:
Write the following in the init field of an object.
[this] execVM "scripts\fillMedicalCrate.sqf";
*/

params ["_crate"];

if (! isServer) exitwith {};
clearItemCargoGlobal _crate;
clearWeaponCargo _crate;
clearMagazineCargo _crate;

// Outputs the maximum between players and multiplier (currently 10)
private _multiplier = 10;
private _players = count switchableUnits max _multiplier;

// Basic configuration
_crate addItemCargoGlobal ["ACE_packingBandage", _players*10];
_crate addItemCargoGlobal ["ACE_elasticBandage", _players*10];
_crate addItemCargoGlobal ["ACE_quikclot", _players*10];

_crate addItemCargoGlobal ["ACE_morphine", _players*4];
_crate addItemCargoGlobal ["ACE_epinephrine", _players*4];

_crate addItemCargoGlobal ["ACE_salineIV", _players*3];
_crate addItemCargoGlobal ["ACE_salineIV_500", _players*3];
_crate addItemCargoGlobal ["ACE_salineIV_250", _players*3];

_crate addItemCargoGlobal ["ACE_BodyBag", _players];
_crate addItemCargoGlobal ["ACE_EarPlugs", _players];
_crate addItemCargoGlobal ["ACE_tourniquet", _players*3];
_crate addItemCargoGlobal ["ACE_splint", _players*3];