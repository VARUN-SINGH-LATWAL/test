@echo off
cd /d "C:\Users\USER\Desktop\daily-node-commits"  

for /l %%i in (1,1,6) do (
  echo Commit %%i on %date% %time% >> logs.txt
  git add logs.txt
  git commit -m "Auto commit %%i on %date%"
  git push
  timeout /t 600 >nul  :: waits 10 minutes
)
