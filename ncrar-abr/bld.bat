%PYTHON% -m pip install --no-deps --ignore-installed .
if errorlevel 1 exit 1

set MENU_DIR=%PREFIX%\Menu
IF NOT EXIST (%MENU_DIR%) mkdir %MENU_DIR%

copy %RECIPE_DIR%\abr-icon.ico %MENU_DIR%\
if errorlevel 1 exit 1

copy %RECIPE_DIR%\menu-windows.json %MENU_DIR%\ncrar-abr.json
if errorlevel 1 exit 1
