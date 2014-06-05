class Params
{
    class freezeTime
    {
        title = "$STR_OEC_param_freezeTime";
        values[] = { 0, 30, 60, 90, 120, 180, 300 };
        texts[] = { "$STR_OEC_param_value_No", "00:30", "01:00", "01:30", "02:00", "03:00", "05:00" };
        default = 180;
    };

    class envSeason
    {
        title = "$STR_OEC_param_envSeason";
        values[] = { -1, 0, 1, 2, 3 };
        texts[] = { "$STR_OEC_param_value_Random", "$STR_OEC_param_value_Winter", "$STR_OEC_param_value_Spring", "$STR_OEC_param_value_Summer", "$STR_OEC_param_value_Autumn" };
        default = 2;
    };

    class envTime
    {
        title = "$STR_OEC_param_envTime";
        values[] = { -1, 0, 4, 8, 12, 16, 20 };
        texts[] = { "$STR_OEC_param_value_Random", "$STR_OEC_param_value_Dark_night", "$STR_OEC_param_value_Early_morning", "$STR_OEC_param_value_Morning", "$STR_OEC_param_value_Afternoon", "$STR_OEC_param_value_Sundown", "$STR_OEC_param_value_Night" };
        default = 12;
    };

    class envOvercast
    {
        title = "$STR_OEC_param_envOvercast";
        values[] = { -1, 0, 0.25, 0.50, 0.75, 1 };
        texts[] = { "$STR_OEC_param_value_Random", "$STR_OEC_param_value_Clear", "$STR_OEC_param_value_Partly_cloudy", "$STR_OEC_param_value_Cloudy", "$STR_OEC_param_value_Overcast", "$STR_OEC_param_value_Storm" };
        default = 0;
    };

    class envFog
    {
        title = "$STR_OEC_param_envFog";
        values[] = { -1, 0, 0.25, 0.50, 0.75, 1 };
        texts[] = { "$STR_OEC_param_value_Random", "$STR_OEC_param_value_No", "$STR_OEC_param_value_Little", "$STR_OEC_param_value_Middle", "$STR_OEC_param_value_High", "$STR_OEC_param_value_Full" };
        default = 0;
    };

    class envRain
    {
        title = "$STR_OEC_param_envRain";
        values[] = { -1, 0, 1 };
        texts[] = { "$STR_OEC_param_value_Random", "$STR_OEC_param_value_No", "$STR_OEC_param_value_Yes" };
        default = 0;
    };

    class aiEnable
    {
        title = "$STR_OEC_param_aiEnable";
        values[] = { 0, 1 };
        texts[] = { "$STR_OEC_param_value_No", "$STR_OEC_param_value_Yes" };
        default = 0;
    };
};