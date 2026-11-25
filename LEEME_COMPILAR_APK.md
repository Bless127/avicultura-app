# AviculturaPro — Kit de Compilación APK para Android

Este paquete contiene la aplicación móvil **AviculturaPro** (100% autocontenida y funcional sin internet en el galpón) lista para empaquetarse como **APK nativa de Android** usando **Capacitor**.

---

## Opción 1: Compilar el APK en tu PC (Windows / Linux / Mac)

### Requisitos previos
1. **Node.js 20+** instalado.
2. **Java JDK 17** y **Android SDK** (instalados automáticamente si tienes **Android Studio**).

### Pasos rápidos
1. Descomprime esta carpeta y ábrela en **Visual Studio Code**.
2. Ejecuta `build-apk.bat` (en Windows) o `./build-apk.sh` (en Linux/Mac), o escribe en la terminal:
   ```bash
   npm install
   npx cap add android
   npx cap sync android
   cd android && ./gradlew assembleDebug
   ```
3. Tu archivo instalable quedará generado en:
   `android/app/build/outputs/apk/debug/app-debug.apk`
4. Pásalo a tu teléfono Android por cable USB, WhatsApp o Drive e instálalo (activa *"Instalar aplicaciones de orígenes desconocidos"* si Android te lo solicita).

---

## Opción 2: Compilar el APK en la nube SIN instalar Android Studio (GitHub Actions)

Si no quieres descargar el SDK de Android (~15 GB) en tu computadora:
1. Crea un repositorio nuevo en **GitHub** y sube todos los archivos de esta carpeta (incluyendo la carpeta oculta `.github/workflows/build-apk.yml`).
2. Entra a la pestaña **Actions** de tu repositorio en GitHub.
3. GitHub compilará el proyecto automáticamente en Ubuntu con Java 17 y Android SDK en ~3 minutos.
4. Al terminar, entra a la ejecución y descarga el archivo **`AviculturaPro-Android-APK`** directo a tu celular.

---

## Opción 3: Instalación directa como App Android (PWA) sin compilar
Si subes la carpeta `www/` a cualquier hosting gratuito (Netlify, Vercel o GitHub Pages) y la abres en **Google Chrome en tu Android**, pulsa el menú `⋮` → **"Instalar aplicación"**. Android creará el ícono en tu pantalla de inicio y funcionará sin internet gracias al Service Worker incluido.
