private ["_display","_childControl"];
_nul = createDialog "dealer_mil_blk";

//sleep 1;
disableSerialization;

_display = findDisplay 120;

if (str (_display) != "no display") then
{
	_ChildControl = _display displayCtrl 104;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nGAZ Tigr infantry carrier with turreted PKP gun and GMG, seats up to 7 people.",[milblkGunVic] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> milblkGunVic >> "displayName")];
	_ChildControl = _display displayCtrl 105;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nM113A3 tracked armored personnel carrier with shielded M2 turret.\n\nSeats up to 8 people.",[milblkAPC] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> milblkAPC >> "displayName")];
	_ChildControl = _display displayCtrl 106;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nBRDM-2 MRAP with KPVT primary & PKT secondary gun turret.\n\nSeats up to 11 people.",[milblkMRAP] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> milblkMRAP >> "displayName")];
	_ChildControl = _display displayCtrl 107;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nBMD-1 infantry fighting vehicle with 73mm main gun, PKT coaxial, and Konkurst ATGMs.\n\nSeats up to 13 people.",[milblkScoutIFV] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> milblkScoutIFV >> "displayName")];
	_ChildControl = _display displayCtrl 108;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nAH-6 light attack helicopter with two M134 rotary MGs and 14 HE rockets.\n\nRoom for two pilots and one idiot sitting on top the left hardpoint.",[milblkAH6] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> milblkAH6 >> "displayName")];
};

