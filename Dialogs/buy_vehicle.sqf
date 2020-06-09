private ["_display","_childControl"];
_nul = createDialog "buy_vehicle";

//sleep 1;
disableSerialization;

_display = findDisplay 100;

if (str (_display) != "no display") then
{
	_ChildControl = _display displayCtrl 104;
	_ChildControl  ctrlSetTooltip format ["An offroad quadbike for two\nCost: %1 ой",[vehSDKBike] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> vehSDKBike >> "displayName")];
	_ChildControl = _display displayCtrl 105;
	_ChildControl  ctrlSetTooltip format ["Light jeep, seats 6 people\nCost: %1 ой",[vehSDKLightUnarmed] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> vehSDKLightUnarmed >> "displayName")];
	_ChildControl = _display displayCtrl 106;
	_ChildControl  ctrlSetTooltip format ["Heavy truck, seats 15 people\nCost: %1 ой",[vehSDKTruck] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> vehSDKTruck >> "displayName")];
	_ChildControl = _display displayCtrl 107;
	_ChildControl  ctrlSetTooltip format ["Armed technical\nCost: %1 ой",[vehSDKLightArmed] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> vehSDKLightArmed >> "displayName")];
	_ChildControl = _display displayCtrl 108;
	_ChildControl  ctrlSetTooltip format ["Heavy machine gun static\nCost: %1 ой",[SDKMGStatic] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> SDKMGStatic >> "displayName")];
	_ChildControl = _display displayCtrl 109;
	_ChildControl  ctrlSetTooltip format ["Mortar artillery static\nCost: %1 ой",[SDKMortar] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> SDKMortar >> "displayName")];
	_ChildControl = _display displayCtrl 110;
	_ChildControl  ctrlSetTooltip format ["Anti-tank static\nCost: %1 ой",[staticATBuenos] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> staticATBuenos >> "displayName")];
	_ChildControl = _display displayCtrl 111;
	_ChildControl  ctrlSetTooltip format ["Anti-air flak static\nCost: %1 ой",[staticAABuenos] call A3A_fnc_vehiclePrice];
	_childControl ctrlSetText format ["%1",getText (configFile >> "CfgVehicles" >> staticAABuenos >> "displayName")];
};