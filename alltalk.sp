
/*	Copyright (C) 2017 IT-KiLLER
	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#include <sourcemod>
#include <sdktools>
#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo =
{
	name = "[CS:GO] Enforce Alltalk ",
	author = "IT-KiLLER",
	description = "This plugin make it impossible to change Alltalk in CS:GO.",
	version = "1.2",
	url = "https://github.com/IT-KiLLER"
};

public void OnAllPluginsLoaded()
{
	enForcer("sm_deadtalk", 2.0);
   	enForcer("sv_deadtalk");
   	enForcer("sv_alltalk");
   	enForcer("sv_full_alltalk");
   	enForcer("sv_spec_hear");
   	enForcer("sv_talk_enemy_dead");
   	enForcer("sv_talk_enemy_living");
}

stock void enForcer(char[] strCvar, float value = 1.0)
{
	ConVar cvar = FindConVar(strCvar);
	if(!cvar) return;
	cvar.SetFloat(value, false, false);
	cvar.SetBounds(ConVarBound_Upper, true, value);
	cvar.SetBounds(ConVarBound_Lower, true, value);
}