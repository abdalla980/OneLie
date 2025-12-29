@echo off
echo Building Flutter web app...
flutter build web
echo.
echo Copying _redirects file for Netlify...
copy web\_redirects build\web\_redirects
echo.
echo Build complete! Upload the build\web folder to Netlify.

