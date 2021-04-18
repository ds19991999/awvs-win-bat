@echo off
setlocal enabledelayedexpansion

:: 定义策略文件
set /p profile=<%cd%\config\default.txt

:: 循环读取目标url，必须带http(s)
for /f %%i in (%cd%\config\url.txt) do (
	@echo +++++++++++++++++++++++++++++++++ %%i ++++++++++++++++++++++++++++++++++++++
	@echo Now scanning site: %%i , please wait a minute!
	@echo .
	@echo ..
	@echo ...
	:: 以 `//` 分割字符串，取第二段作为文件夹的名字
	for /f "tokens=2* delims=//" %%a in ("%%i") do (
		:: wvs扫描策略
		wvs_console --ScanningMode=Quick --ToolTimeout=5 /Scan %%i  /Profile %profile% /SaveFolder %cd%\results\%%a /Save /GenerateReport /ReportFormat HTML /Timestamps
	)
	rem set /a n+=1
	rem echo %%i
	@echo Scanning site: %%i successful !!!
)
Pause
