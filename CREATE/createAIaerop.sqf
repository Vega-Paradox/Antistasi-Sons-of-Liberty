if (!isServer and hasInterface) exitWith{};

private ["_pos","_marcador","_vehiculos","_grupos","_soldados","_posicion","_busy","_buildings","_pos1","_pos2","_grupo","_cuenta","_tipoVeh","_veh","_unit","_arrayVehAAF","_nVeh","_frontera","_size","_ang","_mrk","_tipogrupo","_bandera","_perro","_tipoUnit","_garrison","_lado","_cfg","_max","_vehicle","_vehCrew","_grupoVeh","_roads","_dist","_road","_roadscon","_roadcon","_dirveh","_bunker","_tipoGrupo","_posiciones","_posMG","_posMort","_posTank"];
_marcador = _this select 0;

_vehiculos = [];
_grupos = [];
_soldados = [];

_posicion = getMarkerPos (_marcador);
_pos = [];

_size = [_marcador] call A3A_fnc_sizeMarker;
//_garrison = garrison getVariable _marcador;

_frontera = [_marcador] call A3A_fnc_isFrontline;
_busy = if (dateToNumber date > server getVariable _marcador) then {false} else {true};
_nVeh = round (_size/60);

_lado = lados getVariable [_marcador,sideUnknown];

_posiciones = carreteras getVariable [_marcador,[]];
_posMG = _posiciones select {(_x select 2) == "MG"};
_posMort = _posiciones select {(_x select 2) == "Mort"};
_posTank = _posiciones select {(_x select 2) == "Tank"};
_posAA = _posiciones select {(_x select 2) == "AA"};
_posAT = _posiciones select {(_x select 2) == "AT"};

if (spawner getVariable _marcador != 2) then
	{
	_tipoVeh = if (_lado == malos) then {vehNATOAA} else {vehCSATAA};
	if ([_tipoVeh] call A3A_fnc_vehAvailable) then
		{
		_max = if (_lado == malos) then {1} else {1};
		for "_i" from 1 to _max do
			{
			if (_marcador == "airport_2") then {_pos = [[12238.1,12597.5,0.45], 50, 1, 10, 0, 0.3, 0] call BIS_Fnc_findSafePos;} else {_pos = [_posicion, 50, _size, 10, 0, 0.3, 0] call BIS_Fnc_findSafePos;};
			//_pos = _posicion findEmptyPosition [_size - 200,_size+50,_tipoveh];
			_vehicle=[_pos, random 360,_tipoVeh, _lado] call bis_fnc_spawnvehicle;
			_veh = _vehicle select 0;
			_vehCrew = _vehicle select 1;
			{[_x,_marcador] call A3A_fnc_NATOinit} forEach _vehCrew;
			[_veh] call A3A_fnc_AIVEHinit;
			_grupoVeh = _vehicle select 2;
			_soldados = _soldados + _vehCrew;
			_grupos pushBack _grupoVeh;
			_vehiculos pushBack _veh;
			sleep 1;
			};
		};
	};

//APC Spawn, Northeast airfield
if (_marcador == "airport_2") then 
	{
		if (spawner getVariable _marcador != 2) then
		{
		_tipoVeh = if (_lado == malos) then {selectRandom vehNATOAPC;} else {selectRandom vehCSATAPC;};
		if ([_tipoVeh] call A3A_fnc_vehAvailable) then
			{
			_max = if (_lado == malos) then {1} else {1};
			for "_i" from 1 to _max do
				{
				_pos = [[12084.8,12663.3,1.0369], 50, 1, 10, 0, 0.3, 0] call BIS_Fnc_findSafePos;
				//_pos = _posicion findEmptyPosition [_size - 200,_size+50,_tipoveh];
				_vehicle=[_pos, random 360,_tipoVeh, _lado] call bis_fnc_spawnvehicle;
				_veh = _vehicle select 0;
				_vehCrew = _vehicle select 1;
				{[_x,_marcador] call A3A_fnc_NATOinit} forEach _vehCrew;
				[_veh] call A3A_fnc_AIVEHinit;
				_grupoVeh = _vehicle select 2;
				_soldados = _soldados + _vehCrew;
				_grupos pushBack _grupoVeh;
				_vehiculos pushBack _veh;
				sleep 1;
				};
			};
		};
	};

if ((spawner getVariable _marcador != 2) and _frontera) then
	{
	_roads = _posicion nearRoads _size;
	if (count _roads != 0) then
		{
		_grupo = createGroup _lado;
		_grupos pushBack _grupo;
		_dist = 0;
		_road = objNull;
		{if ((position _x) distance _posicion > _dist) then {_road = _x;_dist = position _x distance _posicion}} forEach _roads;
		_roadscon = roadsConnectedto _road;
		_roadcon = objNull;
		{if ((position _x) distance _posicion > _dist) then {_roadcon = _x}} forEach _roadscon;
		_dirveh = [_roadcon, _road] call BIS_fnc_DirTo;
		_pos = [getPos _road, 7, _dirveh + 270] call BIS_Fnc_relPos;
		_bunker = "Fort_Nest" createVehicle _pos;
		_vehiculos pushBack _bunker;
		_bunker setDir _dirveh;
		_pos = getPosATL _bunker;
		_tipoVeh = if (_lado==malos) then {staticATmalos} else {staticATmuyMalos};
		_veh = _tipoVeh createVehicle _posicion;
		_vehiculos pushBack _veh;
		_veh setPos _pos;
		_veh setDir _dirVeh + 180;
		_tipoUnit = if (_lado==malos) then {staticCrewmalos} else {staticCrewMuyMalos};
		_unit = _grupo createUnit [_tipoUnit, _posicion, [], 0, "NONE"];
		[_unit,_marcador] call A3A_fnc_NATOinit;
		[_veh] call A3A_fnc_AIVEHinit;
		_unit moveInGunner _veh;
		_soldados pushBack _unit;
		};
	};
_mrk = createMarkerLocal [format ["%1patrolarea", random 100], _posicion];
_mrk setMarkerShapeLocal "RECTANGLE";
_mrk setMarkerSizeLocal [(distanciaSPWN/2),(distanciaSPWN/2)];
_mrk setMarkerTypeLocal "hd_warning";
_mrk setMarkerColorLocal "ColorRed";
_mrk setMarkerBrushLocal "DiagGrid";
_ang = markerDir _marcador;
_mrk setMarkerDirLocal _ang;
if (!debug) then {_mrk setMarkerAlphaLocal 0};
_garrison = garrison getVariable [_marcador,[]];
_garrison = _garrison call A3A_fnc_garrisonReorg;
_tam = count _garrison;
private _patrol = true;
if (_tam < ([_marcador] call A3A_fnc_garrisonSize)) then
	{
	_patrol = false;
	}
else
	{
	if ({if ((getMarkerPos _x inArea _mrk) and (lados getVariable [_x,sideUnknown] != _lado)) exitWIth {1}} count marcadores > 0) then {_patrol = false};
	};
if (_patrol) then
	{
	_cuenta = 0;
	while {(spawner getVariable _marcador != 2) and (_cuenta < 4)} do
		{
		_arrayGrupos = if (_lado == malos) then {gruposNATOsmall} else {gruposCSATsmall};
		if ([_marcador,false] call A3A_fnc_fogCheck < 0.3) then {_arrayGrupos = _arrayGrupos - sniperGroups};
		_tipoGrupo = selectRandom _arrayGrupos;
		_grupo = [_posicion,_lado, _tipoGrupo,false,true] call A3A_fnc_spawnGroup;
		if !(isNull _grupo) then
			{
			sleep 1;
			if ((random 10 < 2.5) and (not(_tipogrupo in sniperGroups))) then
				{
				_perro = _grupo createUnit ["Fin_random_F",_posicion,[],0,"FORM"];
				[_perro] spawn A3A_fnc_guardDog;
				sleep 1;
				};
			_nul = [leader _grupo, _mrk, "SAFE","SPAWNED", "RANDOM", "NOVEH2"] execVM "scripts\UPSMON.sqf";
			_grupos pushBack _grupo;
			{[_x,_marcador] call A3A_fnc_NATOinit; _soldados pushBack _x} forEach units _grupo;
			};
		_cuenta = _cuenta +1;
		};
	};
_cuenta = 0;

_grupo = createGroup _lado;
_grupos pushBack _grupo;
_tipoUnit = if (_lado==malos) then {staticCrewmalos} else {staticCrewMuyMalos};
_tipoVeh = if (_lado == malos) then {NATOMortar} else {CSATMortar};
{
if (spawner getVariable _marcador != 2) then
	{
	_veh = _tipoVeh createVehicle [0,0,1000];
	_veh setDir (_x select 1);
	_veh setPosATL (_x select 0);
	_nul=[_veh] execVM "scripts\UPSMON\MON_artillery_add.sqf";
	_unit = _grupo createUnit [_tipoUnit, _posicion, [], 0, "NONE"];
	[_unit,_marcador] call A3A_fnc_NATOinit;
	_unit moveInGunner _veh;
	_soldados pushBack _unit;
	_vehiculos pushBack _veh;
	_nul = [_veh] call A3A_fnc_AIVEHinit;
	sleep 1;
	};
} forEach _posMort;
_tipoVeh = if (_lado == malos) then {NATOMG} else {CSATMG};
{
if (spawner getVariable _marcador != 2) then
	{
	_proceder = true;
	if ((_x select 0) select 2 > 0.5) then
		{
		_bld = nearestBuilding (_x select 0);
		if !(alive _bld) then {_proceder = false};
		};
	if (_proceder) then
		{
		_veh = _tipoVeh createVehicle [0,0,1000];
		_veh setDir (_x select 1);
		_veh setPosATL (_x select 0);
		_unit = _grupo createUnit [_tipoUnit, _posicion, [], 0, "NONE"];
		[_unit,_marcador] call A3A_fnc_NATOinit;
		_unit moveInGunner _veh;
		_soldados pushBack _unit;
		_vehiculos pushBack _veh;
		_nul = [_veh] call A3A_fnc_AIVEHinit;
		sleep 1;
		};
	};
} forEach _posMG;
_tipoVeh = if (_lado == malos) then {staticAAMalos} else {staticAAmuyMalos};
{
if (spawner getVariable _marcador != 2) then
	{
	if !([_tipoVeh] call A3A_fnc_vehAvailable) exitWith {};
	_proceder = true;
	if ((_x select 0) select 2 > 0.5) then
		{
		_bld = nearestBuilding (_x select 0);
		if !(alive _bld) then {_proceder = false};
		};
	if (_proceder) then
		{
		_veh = _tipoVeh createVehicle [0,0,1000];
		_veh setDir (_x select 1);
		_veh setPosATL (_x select 0);
		_unit = _grupo createUnit [_tipoUnit, _posicion, [], 0, "NONE"];
		[_unit,_marcador] call A3A_fnc_NATOinit;
		_unit moveInGunner _veh;
		_soldados pushBack _unit;
		_vehiculos pushBack _veh;
		_nul = [_veh] call A3A_fnc_AIVEHinit;
		sleep 1;
		};
	};
} forEach _posAA;
_tipoVeh = if (_lado == malos) then {staticATMalos} else {staticATmuyMalos};
{
if (spawner getVariable _marcador != 2) then
	{
	if !([_tipoVeh] call A3A_fnc_vehAvailable) exitWith {};
	_proceder = true;
	if ((_x select 0) select 2 > 0.5) then
		{
		_bld = nearestBuilding (_x select 0);
		if !(alive _bld) then {_proceder = false};
		};
	if (_proceder) then
		{
		_veh = _tipoVeh createVehicle [0,0,1000];
		_veh setDir (_x select 1);
		_veh setPosATL (_x select 0);
		_unit = _grupo createUnit [_tipoUnit, _posicion, [], 0, "NONE"];
		[_unit,_marcador] call A3A_fnc_NATOinit;
		_unit moveInGunner _veh;
		_soldados pushBack _unit;
		_vehiculos pushBack _veh;
		_nul = [_veh] call A3A_fnc_AIVEHinit;
		sleep 1;
		};
	};
} forEach _posAT;

_ret = [_marcador,_size,_lado,_frontera] call A3A_fnc_milBuildings;
_grupos pushBack (_ret select 0);
_vehiculos append (_ret select 1);
_soldados append (_ret select 2);

if (!_busy) then
	{
	_buildings = nearestObjects [_posicion, ["Land_LandMark_F","Land_runway_edgelight"], _size / 2];

	//Airport South spawns------------------------------------------------++=++
	if (_lado == malos and _marcador == "airport_1") then 
	{
	_dropPlane = vehNATOTransportPlane;
	_dropVeh = createVehicle [_dropPlane, [4756.97,2596.17,0.803685], [],0, "NONE"];
	_dropVeh setDir (211.798);
	_vehiculos pushBack _dropVeh;

	while {(spawner getVariable _marcador != 2) and (_cuenta < 5)} do
			{
			_tipoVeh = if (_lado == malos) then {selectRandom (vehNATOAttackHelis)} else {selectRandom (vehCSATAttackHelis)};
			_veh = createVehicle [_tipoveh, [4680.03,2497.08,0], [],2, "NONE"];
			_veh setDir (31.656);
			sleep 1;
			_vehiculos pushBack _veh;
			_nul = [_veh] call A3A_fnc_AIVEHinit;
			//_pos = [_pos, 50,_ang] call BIS_fnc_relPos;
			/*
			_tipoUnit = if (_lado==malos) then {NATOpilot} else {CSATpilot};
			_unit = _grupo createUnit [_tipoUnit, _posicion, [], 0, "NONE"];
			[_unit,_marcador] call A3A_fnc_NATOinit;
			_soldados pushBack _unit;
			*/
			_cuenta = _cuenta + 1;
			};
		_nul = [leader _grupo, _marcador, "SAFE","SPAWNED","NOFOLLOW","NOVEH"] execVM "scripts\UPSMON.sqf";
	}

	else 
	{
	_dropPlane = vehCSATTransportPlane;
	_dropVeh = createVehicle [_dropPlane, [4756.97,2596.17,0.803685], [],0, "NONE"];
	_dropVeh setDir (211.798);
	_vehiculos pushBack _dropVeh;
	};

	//Airport Northeast spawns-------------------------------------------++=++
	if (_marcador == "airport_2") then 
	{
		if (_lado == malos) then 
		{
		_aaPlane = selectRandom [vehNATOPlane,vehNATOPlaneAA];
		_aaVeh = createVehicle [_aaPlane, [12019.8,12663.1,1.12224], [],0, "NONE"];
		_aaVeh setDir (19.747);

		_armorAPC = selectRandom vehNATOAPC;
		_armorVeh = _grupo createUnit [_armorAPC, [12097.6,12659,0], [],0, "NONE"];
		_armorVeh setDir (350.330);
		
		_vehiculos pushBack _aaVeh;
		_vehiculos pushBack _armorVeh;
		} 
		else 
		{
		_aaPlane = selectRandom vehCSATPlanes;
		_aaVeh = createVehicle [_aaPlane, [12019.8,12663.1,1.12224], [],0, "NONE"];
		_aaVeh setDir (19.747);

		_armorAPC = selectRandom vehCSATAPC;
		_armorVeh = _grupo createUnit [_armorAPC, [12097.6,12659,0], [],0, "NONE"];
		_armorVeh setDir (350.330);

		_vehiculos pushBack _aaVeh;
		_vehiculos pushBack _armorVeh;
		};
	};

	if (count _buildings > 1) then
		{
		_pos1 = getPos (_buildings select 0);
		_pos2 = getPos (_buildings select 1);
		_ang = "";
		if (_lado == malos and _marcador == "airport") then {_ang = 149.373;} else {_ang = [_pos1, _pos2] call BIS_fnc_DirTo;};
		//_ang = [_pos1, _pos2] call BIS_fnc_DirTo;

		_pos = "";
		if (_lado == malos and _marcador == "airport") then {_pos = [[4792.51,10198.8], 5,_ang] call BIS_fnc_relPos;} else {_pos = [_pos1, 5,_ang] call BIS_fnc_relPos;};
		//_pos = [_pos1, 5,_ang] call BIS_fnc_relPos;
		_casPos = [[4957.11,10002.3,0.08], 5,_ang] call BIS_fnc_relPos;
		_grupo = createGroup _lado;
		_grupos pushBack _grupo;
		_cuenta = 0;

		if (_lado == malos and _marcador == "airport") then 
		{
		_casPlane = vehNATOPlane;
		_casVeh = createVehicle [_casPlane, [4957.11,10002.3,0.08], [],0, "NONE"]; 
		_casVeh setDir (_ang + 90);
		_vehiculos pushBack _casVeh;
		} 
		else 
		{
		_casPlane = vehCSATPlane;
		_casVeh = createVehicle [_casPlane, [4957.11,10002.3,0.08], [],0, "NONE"]; 
		_casVeh setDir (_ang + 90);
		_vehiculos pushBack _casVeh;
		};

		while {(spawner getVariable _marcador != 2) and (_cuenta < 5)} do
			{
			_tipoVeh = if (_lado == malos) then {selectRandom (vehNATOAir select {[_x] call A3A_fnc_vehAvailable})} else {selectRandom (vehCSATAir select {[_x] call A3A_fnc_vehAvailable})};
			_veh = createVehicle [_tipoveh, _pos, [],3, "NONE"];
			_veh setDir (_ang + 90);
			sleep 1;
			_vehiculos pushBack _veh;
			_nul = [_veh] call A3A_fnc_AIVEHinit;
			_pos = [_pos, 50,_ang] call BIS_fnc_relPos;
			/*
			_tipoUnit = if (_lado==malos) then {NATOpilot} else {CSATpilot};
			_unit = _grupo createUnit [_tipoUnit, _posicion, [], 0, "NONE"];
			[_unit,_marcador] call A3A_fnc_NATOinit;
			_soldados pushBack _unit;
			*/
			_cuenta = _cuenta + 1;
			};
		_nul = [leader _grupo, _marcador, "SAFE","SPAWNED","NOFOLLOW","NOVEH"] execVM "scripts\UPSMON.sqf";
		};
	};

_tipoVeh = if (_lado == malos) then {NATOFlag} else {CSATFlag};
if (_lado == malos and _marcador == "airport") then {_bandera = createVehicle [_tipoVeh, [4749.6,10180.9,0], [],0, "CAN_COLLIDE"];} else {_bandera = createVehicle [_tipoVeh, _posicion, [],0, "CAN_COLLIDE"];};
_bandera allowDamage false;
[_bandera,"take"] remoteExec ["A3A_fnc_flagaction",[buenos,civilian],_bandera];
_vehiculos pushBack _bandera;
if (_lado == malos) then
	{
	if (_marcador == "airport") then {_veh = NATOAmmoBox createVehicle [4748.96,10184.5,0];} else {_veh = NATOAmmoBox createVehicle _posicion;};
	_nul = [_veh] call A3A_fnc_NATOcrate;
	_vehiculos pushBack _veh;
	_veh call jn_fnc_logistics_addAction;
	}
else
	{
	_veh = CSATAmmoBox createVehicle _posicion;
	_nul = [_veh] call A3A_fnc_CSATcrate;
	_vehiculos pushBack _veh;
	_veh call jn_fnc_logistics_addAction;
	};

if (!_busy) then
	{
	{
	_arrayVehAAF = if (_lado == malos) then {vehNATOAttack select {[_x] call A3A_fnc_vehAvailable}} else {vehCSATAttack select {[_x] call A3A_fnc_vehAvailable}};
	if ((spawner getVariable _marcador != 2) and (count _arrayVehAAF > 0)) then
		{
		_veh = createVehicle [selectRandom _arrayVehAAF, (_x select 0), [], 0, "NONE"];
		_veh setDir (_x select 1);
		_vehiculos pushBack _veh;
		_nul = [_veh] call A3A_fnc_AIVEHinit;
		_nVeh = _nVeh -1;
		sleep 1;
		};
	} forEach _posTank;
	};
_arrayVehAAF = if (_lado == malos) then {vehNATONormal} else {vehCSATNormal};

_cuenta = 0;
while {(spawner getVariable _marcador != 2) and (_cuenta < _nVeh)} do
	{
	_tipoVeh = selectRandom _arrayVehAAF;
	_pos = [_posicion, 10, _size/2, 10, 0, 0.3, 0] call BIS_Fnc_findSafePos;
	_veh = createVehicle [_tipoVeh, _pos, [], 0, "NONE"];
	_veh setDir random 360;
	_vehiculos pushBack _veh;
	_nul = [_veh] call A3A_fnc_AIVEHinit;
	sleep 1;
	_cuenta = _cuenta + 1;
	};

_array = [];
_subArray = [];
_cuenta = 0;
_tam = _tam -1;

if (_lado == malos and _marcador == "airport") then {_posicion = [4684.33,10193.4,0]} else {_posicion = getMarkerPos (_marcador);};

while {_cuenta <= _tam} do
	{
	_array pushBack (_garrison select [_cuenta,7]);
	_cuenta = _cuenta + 8;
	};
for "_i" from 0 to (count _array - 1) do
	{
	_grupo = if (_i == 0) then {[_posicion,_lado, (_array select _i),true,false] call A3A_fnc_spawnGroup} else {[_posicion,_lado, (_array select _i),false,true] call A3A_fnc_spawnGroup};
	_grupos pushBack _grupo;
	{[_x,_marcador] call A3A_fnc_NATOinit; _soldados pushBack _x} forEach units _grupo;
	if (_i == 0) then {_nul = [leader _grupo, _marcador, "SAFE", "RANDOMUP","SPAWNED", "NOVEH2", "NOFOLLOW"] execVM "scripts\UPSMON.sqf"} else {_nul = [leader _grupo, _marcador, "SAFE","SPAWNED", "RANDOM","NOVEH2", "NOFOLLOW"] execVM "scripts\UPSMON.sqf"};
	};

waitUntil {sleep 1; (spawner getVariable _marcador == 2)};

deleteMarker _mrk;
{if (alive _x) then
	{
	deleteVehicle _x
	};
} forEach _soldados;
//if (!isNull _periodista) then {deleteVehicle _periodista};
{deleteGroup _x} forEach _grupos;
{
if (!(_x in staticsToSave)) then
	{
	if ((!([distanciaSPWN-_size,1,_x,buenos] call A3A_fnc_distanceUnits))) then {deleteVehicle _x}
	};
} forEach _vehiculos;


