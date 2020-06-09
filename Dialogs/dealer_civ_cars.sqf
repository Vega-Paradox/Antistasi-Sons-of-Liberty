private ["_display","_childControl"];
_nul = createDialog "dealer_civ_cars";

//sleep 1;
disableSerialization;

_display = findDisplay 100;

if (str (_display) != "no display") then
{
	_ChildControl = _display displayCtrl 104;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nTop Speed: 82 km/h\n\nHandling: It's a quadbike, so it handles like a double-wide scooter. What more do I have to say?\n\nIntegrity: It has a plastic chassis. Run into a bush, and the engine is busted.\n\nCan seat up to 2 people. You can go undercover in this vehicle.",[civgndBike] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civgndBike >> "displayName")];
	_ChildControl = _display displayCtrl 105;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nTop Speed: 120 km/h\n\nHandling: It's a subpar car with supbar handling. Has astonishingly slow acceleration.\n\nIntegrity: It's a soda can on wheels, so it certainly won't protect Timmy from bullets when you pick him up from soccer practice.\n\nCan seat up to 4 people. You can go undercover in this vehicle.",[civgndSedan] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civgndSedan >> "displayName")];
	_ChildControl = _display displayCtrl 106;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nTop Speed: 113 km/h\n\nHandling: It handles surprisingly well, with good acceleration. Reliably loveable.\n\nIntegrity: It can topple a few walls and survive, but it won't be saving your life from gunshots with those wide windows.\n\nCan seat up to 7 people. You can go undercover in this vehicle.\nThis version has been modified to put the steering wheel on the left side, where it belongs.",[civgndJeepH] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civgndJeepH >> "displayName")];
	_ChildControl = _display displayCtrl 107;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nTop Speed: 121 km/h\n\nHandling: It turns around a giant's version of a dime. Has shockingly slow acceleration.\n\nIntegrity: It can take a couple hits, but it has an open-top.\n\nCan seat up to 7 people. You can go undercover in this vehicle. Extensive use may give the user strong feelings of revolution.",[civgndJeepL] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> civgndJeepL >> "displayName")];
};

