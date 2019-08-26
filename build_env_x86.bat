@echo off
cd /d "%~dp0"
rem Put in the base path in which Visual Studio is installed, default would be C:\Program Files (x86)

set VS_Base_Path=C:\Program Files (x86)

if exist "%VS_Base_Path%\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat" goto vs2019
if exist "%VS_Base_Path%\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat" goto vs2017
if exist "%VS_Base_Path%\Microsoft Visual Studio 14.0\VC\bin\amd64_x86\vcvarsamd64_x86.bat" goto vs14

:vs2019
call "%VS_Base_Path%\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat"
goto batend

:vs2017
call "%VS_Base_Path%\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"
goto batend

:vs14
call "%VS_Base_Path%\Microsoft Visual Studio 14.0\VC\bin\amd64_x86\vcvarsamd64_x86.bat"
goto batend
:batend
