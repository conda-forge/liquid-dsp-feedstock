@echo on

echo source %SYS_PREFIX:\=/%/etc/profile.d/conda.sh    > conda_build.sh
echo conda activate "${PREFIX}"                       >> conda_build.sh
echo conda activate --stack "${BUILD_PREFIX}"         >> conda_build.sh
echo CONDA_PREFIX=${CONDA_PREFIX//\\//}               >> conda_build.sh
type "%RECIPE_DIR%\build.sh"                          >> conda_build.sh

set PREFIX=%LIBRARY_PREFIX:\=/%
set BUILD_PREFIX=%BUILD_PREFIX:\=/%
set CONDA_PREFIX=%CONDA_PREFIX:\=/%
set SRC_DIR=%SRC_DIR:\=/%
set MSYSTEM=UCRT64
set MSYS2_PATH_TYPE=inherit
set CHERE_INVOKING=1
bash -lc "./conda_build.sh"
if errorlevel 1 exit 1

:: Generate MSVC-compatible import library
FOR /F %%i in ("liquid*.dll") DO lib /def:liquid.def /name:%%~ni.dll /out:liquid.lib /machine:x64
copy liquid.lib "%LIBRARY_PREFIX%/lib/liquid.lib"
if errorlevel 1 exit 1
