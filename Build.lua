-- premake5.lua
workspace "CPP_Experiments"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "TDK-App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Core"
	include "TDK-Core/Build-Core.lua"
group ""

include "TDK-App/Build-App.lua"