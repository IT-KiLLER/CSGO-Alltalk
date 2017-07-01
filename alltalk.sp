#include <sourcemod>
#include <sdktools>
#pragma semicolon 1
#pragma newdecls required


public Plugin myinfo =
{
	name = "[CS:GO] Alltalk",
	author = "IT-KiLLER",
	description = "Force alltalk in CS:GO",
	version = "1.0",
	url = "https://github.com/it-killer"
};

public void OnPluginStart()
{
	HookEvent("round_start", OnRoundStart, EventHookMode_PostNoCopy); 
}

public void OnRoundStart(Handle event, char[] name, bool dontBroadcast)
{
   	SetConVarInt(FindConVar("sm_deadtalk"), 2, false, false);
   	SetConVarInt(FindConVar("sv_deadtalk"), 1, false, false);
   	SetConVarInt(FindConVar("sv_alltalk"), 1, false, false);
	SetConVarInt(FindConVar("sv_full_alltalk"), 1, false, false);
	SetConVarInt(FindConVar("sv_spec_hear"), 1, false, false);
	SetConVarInt(FindConVar("sv_coaching_enabled"), 1, false, false);
	SetConVarInt(FindConVar("sv_talk_enemy_dead"), 1, false, false);
	SetConVarInt(FindConVar("sv_talk_enemy_living"), 1, false, false);
}  