@echo off
chcp 65001 >nul
title 本地服务器 - 关闭这个窗口就停止
set PY=C:\Users\19091\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\python.exe

echo 正在启动本地服务器...
echo 网址：http://127.0.0.1:8123/index.html
echo.
echo 【注意】这个黑窗口不能关。关掉它，网站就打不开了。
echo 【为什么需要它】双击 html 打开时地址是 file:// ，浏览器不允许页面之间做转场动画；
echo 用 http://127.0.0.1 打开才算"同一个网站"，转场才生效。
echo.

start "" cmd /k ""%PY%" -m http.server 8123 --directory "%~dp0""
timeout /t 2 >nul
start "" "http://127.0.0.1:8123/index.html"
