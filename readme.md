# android_robotframework

Mobile automation android use robotframework

### Prerequisites in local machine
- Appium Server 
- Install Python 
- Install RobotFramework
- Install RobotFramework-appiumlibrary
- Install RobotFramework-pabot

### Tested on
- Appium Server `1.22.2`
- Python `3.10.2`
- RobotFramework `5.0`
- RobotFramework-AppiumLibrary `1.6.3`

### Getting Started
1. Run Appium Server
2. Run Emulator / Read Device
3. Run this project
4. Edit configuration your device in script Resources/Common/Android_config.robot
5. Download APK from here and extract same folder in this repo.
    https://drive.google.com/file/d/11YLz8w9ML5VilEkriW64Ea50suxZCtpI/view?usp=sharing

### This is directory structure

        .
    ├── readme.md
    ├── Tests
    │   ├── Step
    │   ├── Scenario
    │   └── Page
    ├── Resources
    │   └── Common
    ├── Library
    └── App
        └── Android-NativeDemoApp-0.4.0.apk


### Foldering and Naming Convention

1. Filename using `snake_case`
2. Variable name using `camelCase`
3. Variable device(._config) name using `UPPER_CASE`

### Install Requirements
    
    pip install -r requirements.txt
    
### Run Test with Pabot

    robot -d results -i Smoke Tests/Tags.robot

Desc : 
-d       = Output report
results  = name folder report will write in this folder
-i       = include taging
Smoke    = taging testcase
Tests/Tags.robot = location file testcase and runner.
