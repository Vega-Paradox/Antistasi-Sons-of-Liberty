if (worldName != "Tanoa") exitWith {true};

_sitio1 = _this select 0;
_posSitio1 = if (_sitio1 isEqualType "") then {getMarkerPos _sitio1} else {_this select 0};

_sitio2 = _this select 1;
_posSitio2 = if (_sitio2 isEqualType "") then {getMarkerPos _sitio2} else {_this select 1};

_return = false;
if (_posSitio1 distance getMarkerPos "isla" <= 8000) then
	{
	if (_posSitio2 distance getMarkerPos "isla" <= 8000) then {_return = true};
	};
_return