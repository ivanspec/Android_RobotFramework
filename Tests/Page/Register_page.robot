*** Variable ***
${registerRePassword}   accessibility_id=input-repeat-password
${titleRegister}        xpath=//android.view.ViewGroup[@content-desc="button-sign-up-container"]
${signUpBtn}            xpath=//android.view.ViewGroup[@content-desc="button-SIGN UP"]/android.view.ViewGroup/android.widget.TextView

*** Keywords ***
Set text re-password
    Input Text                      ${registerRePassword}       12341234

Click register
    Wait Until Element Is Visible   ${titleRegister}
    Click Element                   ${titleRegister}

Click signUpBtn
    Click Element                   ${signUpBtn}