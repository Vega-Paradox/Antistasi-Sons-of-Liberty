private ["_display","_childControl"];
_nul = createDialog "dealer_civ_helis";

//sleep 1;
disableSerialization;

_display = findDisplay 100;

if (str (_display) != "no display") then
{
	_ChildControl = _display displayCtrl 104;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nUse: Light transport & surveillance, low cargo capability.\n\nPerformance: Handles like a half-ton feather, but perfect for tight landings and extreme low-altitude flight.\n\nIntegrity: Any rockets, machinegun fire, and hard landings will trash her.\n\nYou can go undercover in this helicopter. Profile is based on balanced flight speeds, ~100 km/h.",[civHeli] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civHeli >> "displayName")];
	_ChildControl = _display displayCtrl 105;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nUse: Medium transport & cargo, minimal sling-load capability.\n\nPerformance: Flies smooth like butter, a pilot's dream.\n\nIntegrity: She can tolerate some machinegun fire, anything more and she's a dead bird.\n\nYou can go undercover in this helicopter. Profile is based on balanced flight speeds, ~100 km/h.",[civairMed] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civairMed >> "displayName")];
	_ChildControl = _display displayCtrl 106;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\nUse: Heavy transport & cargo, space for 18 units total, light sling-load capability.\n\nPerformance: The opposite of the UH-1H; she handles like a sky tractor. Be gentle, and it's a rewarding flight experience.\n\nYou can go undercover in this helicopter. Profile is based on balanced flight speeds, ~100 km/h.",[civairHeavy] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civairHeavy >> "displayName")];
	_ChildControl = _display displayCtrl 107;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nUse: Heavy transport & cargo, space for 18 units total, light sling-load capability.\n\nPerformance: The only way to describe how it flies is by comparing it to that snappy blonde girl we all knew in school.\n\nIntegrity: She can take near-miss MANPADs or sustained machinegun fire and only be disabled. A hard landing kills her.\n\nYou can go undercover in this helicopter. Profile is based on balanced flight speeds, ~100 km/h.",[civairHeavy2] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civairHeavy2 >> "displayName")];
};

