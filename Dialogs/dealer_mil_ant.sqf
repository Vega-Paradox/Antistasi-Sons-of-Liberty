private ["_display","_childControl"];
_nul = createDialog "dealer_mil_ant";

//sleep 1;
disableSerialization;

_display = findDisplay 110;

if (str (_display) != "no display") then
{
	_ChildControl = _display displayCtrl 104;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nBTR-40 armored troop transport, seats up to 7 people.",[milantBTR40] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> milantBTR40 >> "displayName")];
	_ChildControl = _display displayCtrl 105;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nBTR-40 armored troop transport with a mounted DshKM gun. Seats up to 8 people.",[milantBTR40a] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> milantBTR40a >> "displayName")];
	_ChildControl = _display displayCtrl 106;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nMT-LB armored personnel carrier with PKT gun turret.\n\nSeats up to 12 people.",[milantMTLB] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> milantMTLB >> "displayName")];
	_ChildControl = _display displayCtrl 107;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nBTR-60 armored personnel carrier and light IFV with KPVT gun turret and PKT coaxial.\n\nSeats up to 20 people.",[milantBTR60] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> milantBTR60 >> "displayName")];
	_ChildControl = _display displayCtrl 108;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 ой\n\nT-34-85M tank. Lightly armored by today's standards.\n\nRoom for 4 crew members.",[milantT34] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> milantT34 >> "displayName")];
};

