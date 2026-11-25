@echo off
echo ==========================================
echo   COMPILANDO AVICULTURAPRO APK ANDROID
echo ==========================================
call npm install
if not exist "android" (
    call npx cap add android
)
call npx cap sync android
cd android
call gradlew.bat assembleDebug
echo.
echo ==========================================
echo   LISTO! Tu APK esta en:
echo   android\app\build\outputs\apk\debug\app-debug.apk
echo ==========================================
pause
