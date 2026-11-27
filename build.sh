#!/bin/bash
# Every rebuild: assemble, sign (gradle config), then publish to both locations.
set -e
cd /root/chess-assist
/root/gradle-8.7/bin/gradle :app:assembleDebug --no-daemon
cp app/build/outputs/apk/debug/app-debug.apk /root/ChessAssist.apk
cp app/build/outputs/apk/debug/app-debug.apk /storage/emulated/0/Download/ChessAssist.apk
ls -lh /root/ChessAssist.apk /storage/emulated/0/Download/ChessAssist.apk
sha256sum /root/ChessAssist.apk /storage/emulated/0/Download/ChessAssist.apk
