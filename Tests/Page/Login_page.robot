*** Variable ***
${loginMenuBtn}                 android=new UiSelector().text("Login").className("android.widget.TextView")
${loginEmail}                   accessibility_id=input-email
${loginPass}                    accessibility_id=input-password
${loginBtn}                     accessibility_id=button-LOGIN
${alertTitle}                   id=android:id/alertTitle
${alertMessage}                 id=android:id/message
${closeAlertBtn}                id=android:id/button1

*** Keywords ***
Tap loginMenu 
    Wait Until Element Is Visible   ${loginMenuBtn}
    Click Element                   ${loginMenuBtn}

Set text username 
    Wait Until Element Is Visible   ${loginEmail}
    Input Text                      ${loginEmail}       test@kok.gitu

Set text password
    Input Text                      ${loginPass}        12341234

Click loginBtn    
    Click Element                   ${loginBtn}

Assert alert title is "${expected_result}"
    Wait Until Element Is Visible   ${alertTitle}
    Element Text Should Be          ${alertTitle}       ${expected_result}

Assert alert description is "${expected_result}"
    Element Text Should Be          ${alertMessage}     ${expected_result}

Close alertBtn   
    Click Element                   ${closeAlertBtn}  
