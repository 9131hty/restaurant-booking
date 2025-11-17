@echo off
setlocal

REM --- Path to local JDK inside the project ---
set JAVA_CMD=%~dp0jdk\bin\java.exe

REM --- Check if JDK exists ---
if not exist "%JAVA_CMD%" (
    echo JDK not found. Downloading JDK 23...

    REM --- URL to download JDK 23 ---
    set JDK_URL=https://github.com/adoptium/temurin23-binaries/releases/download/jdk-23.0.1%2B10/OpenJDK23U-jdk_x64_windows_hotspot_23.0.1_10.zip
    set JDK_ZIP=jdk.zip

    REM --- Download and extract JDK ---
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%JDK_URL%', '%JDK_ZIP%')"
    powershell -Command "Expand-Archive '%JDK_ZIP%' '.'"
    ren jdk-23* jdk
    del %JDK_ZIP%
)

REM --- Run Maven Wrapper using the local JDK ---
REM No need to set JAVA_HOME or modify PATH
set MAVEN_OPTS=
set JAVA_HOME=

"%JAVA_CMD%" -Dmaven.multiModuleProjectDirectory="%CD%" ^
    -cp ".mvn\wrapper\maven-wrapper.jar" ^
    org.apache.maven.wrapper.MavenWrapperMain ^
    clean package

endlocal
pause
