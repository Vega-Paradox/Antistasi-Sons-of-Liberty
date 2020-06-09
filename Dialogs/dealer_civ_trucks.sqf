private ["_display","_childControl"];
_nul = createDialog "dealer_civ_trucks";

//sleep 1;
disableSerialization;

_display = findDisplay 100;

if (str (_display) != "no display") then
{
	_ChildControl = _display displayCtrl 104;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nTop Speed: 105 km/h\n\nHandling: Features mildly twitchy steering, and has decent acceleration.\n\nIntegrity: The cabin is essentially a soda can with a large, open window.\n\nCan seat up to 13 people. You can go undercover in this vehicle.",[civgndLightTruck] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1","Iveco Daily 4x4 (Flatbed)"];
	_ChildControl = _display displayCtrl 105;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nTop Speed: 64 km/h\n\nHandling: Smooth steering, impressive acceleration. Lacks in the brakes department.\n\nIntegrity: A pretty tough cookie, can bump a fair number of trees and still manage to function.\n\nCan seat up to 14 people. You can go undercover in this vehicle.",[civgndCoverTruck] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civgndCoverTruck >> "displayName")];
	_ChildControl = _display displayCtrl 106;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nTop Speed: 64 km/h\n\nHandling: Smooth steering, impressive acceleration. Lacks in the brakes department.\n\nIntegrity: A pretty tough cookie, can bump a fair number of trees and still manage to function.\n\nOnly seats 2 people. You can go undercover in this vehicle. Repairs other vehicles.",[civgndRepairTruck] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civgndRepairTruck >> "displayName")];
	_ChildControl = _display displayCtrl 107;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nTop Speed: 79\n\nHandling: Handles nicely, with decent acceleration. Good brake distance.\n\nIntegrity: A hard nut to crack, could topple a few trees and live.\n\nOnly seats 3 people. You can go undercover in this vehicle.\n\nSupports vehicle-in-vehicle transport. To use it, simply\ndrive another vehicle behind it and select 'Load vehicle' from the actions menu.",[civgndRecovTruck] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civgndRecovTruck >> "displayName")];
	_ChildControl = _display displayCtrl 108;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nTop Speed: 83\n\nHandling: Handles well, with good acceleration. Decent brake distance.\n\nIntegrity: A well-grounded vehicle, it won't even budge in the face of reckless driving.\n\nOnly seats 3 people. You can go undercover in this vehicle. Refuels other vehicles.",[civgndFuelTruck] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civgndFuelTruck >> "displayName")];
};