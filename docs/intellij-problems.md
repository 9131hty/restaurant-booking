
# Running a Clean Tomcat Deployment in IntelliJ

## Problem

Even after updating code and rebuilding, old apps still appear at URLs like:

```text
http://localhost:<port>/<app_name>_war_exploded/<path_to_file>/***.html
```

<b>Reason</b>: IntelliJ deploys apps to its own Tomcat instance, not the external Tomcat you want to run.

### Step 1 – Stop All Tomcat Instances

* Stop Tomcat inside IntelliJ
* Stop any external Tomcat (catalina.bat stop or running process)
* Verify no process is using port 8080:

```text
netstat -ano | findstr :8080
```

* Kill any remaining process if needed:

```text
taskkill /PID <PID> /F
```

### Step 2 – Delete IntelliJ Tomcat Base

IntelliJ creates a private CATALINA_BASE for running apps. Delete it completely:

```text
C:\Users\<user>\AppData\Local\JetBrains\<intellij_version>\tomcat\
```

This ensures no old artifacts remain.

### Step 3 – Clean Project Artifacts

Delete all previous build artifacts:

```text
project-root/target/
```

Run a clean build:

```bash
mvn clean package
```

### Step 4 – Configure Environment Variables

<b>CATALINA_HOME</b> → points to your real Tomcat installation:

```text
<disk>:\Apache\apache-tomcat-<tomcat_version>
```

<b>CATALINA_BASE</b> → optional, usually same as CATALINA_HOME unless running multiple instances.

On Windows:

```bash
setx CATALINA_HOME "<disk>:\Apache\apache-tomcat-11.0.11"
setx CATALINA_BASE "<disk>:\Apache\apache-tomcat-11.0.11"
```

*Replace "<\disk>" with your actual disk.*
Restart IntelliJ or terminal for variables to take effect.

### Step 5 – Configure Tomcat in IntelliJ

* Go to: Run → Edit Configurations
* Add a new Tomcat Server → Local
* Set Tomcat Home to your installation folder:

```bash
<disk>:\Apache\apache-tomcat-<tomcat_version>
```

#### Set Tomcat Base (optional, can be the same)

Deployment tab:

```text
Remove old _war_exploded deployments
```

Add your artifact:

```text
<app_name>:war exploded
```

Set Context Path:

```text
/<app_name>
```

### Step 6 – Start Tomcat and Test

Run Tomcat from IntelliJ
URL should now be clean:

```text
http://localhost:8080/<app_name>
```

Old URL:

```text
/<app_name>_war_exploded/...
```

should return 404.

#### Verify logs

Deploying web application directory *.../<app_name>*

### Step 7 – Verify Environment Variables in IntelliJ

* Open Run Configurations → Environment
* Ensure CATALINA_HOME and CATALINA_BASE match your real Tomcat
* Optional: Add JAVA_HOME if IntelliJ does not detect your JDK

* Pro Tips
  * Always use one context path per app to avoid conflicts.
  * Avoid relying on IntelliJ's private Tomcat; prefer external Tomcat for consistent behavior.
  * Clear cache and old artifacts before redeploying.
