#!/usr/bin/env bash
set -e
echo "=========================================="
echo "  COMPILANDO AVICULTURAPRO APK ANDROID"
echo "=========================================="
npm install
if [ ! -d "android" ]; then
  npx cap add android
fi
npx cap sync android
cd android
chmod +x gradlew
./gradlew assembleDebug
echo ""
echo "=========================================="
echo "  LISTO! Tu APK esta en:"
echo "  android/app/build/outputs/apk/debug/app-debug.apk"
echo "=========================================="
