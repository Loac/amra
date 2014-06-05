/*
    Initializations.
*/

if (isServer) then {
    /*
        Server initialization.
    */
    [] execVM "server\init.sqf";
};

if (not isDedicated) then {
    /*
        Client side procedures.
    */
    [] execVM "client\init.sqf";
};