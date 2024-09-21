REM egregore launching script
REM chdh - 2013
cd Pd-0.46-2.win
cd bin
IF %1=="1" echo log2 > ../../../../log2.txt

:loop

IF %1=="1" echo START param_down_sub %date% %time% >> ../../../../log2.txt
IF %1=="1" pd.exe -noprefs -nogui -noadc -nodac -send "debug 1" -open ../../../../src/abs/param_down_sub.pd 2>> ../../../../log2.txt
IF %1=="0" pd.exe -noprefs -nogui -noadc -nodac -send "debug 0" -open ../../../../src/abs/param_down_sub.pd
IF %1=="1" echo CRASH param_down_sub %date% %time% >> ../../../../log2.txt

ping -n 2 localhost > nul
GOTO loop
