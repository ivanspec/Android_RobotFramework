*** Settings ***
Resource        ${EXECDIR}/Tests/Page/Register_page.robot
Resource        ${EXECDIR}/Tests/Page/Login_page.robot

*** Keywords ***
User open app
    No operation

User fill username,password and re-password
    Tap loginMenu 
    Click register
    Set text username 
    Set text password
    Set text Re-Password
    Click signUpBtn

User sucessfull register
    Assert alert title is "Signed Up!"
    Assert alert description is "You successfully signed up!"
    Close alertBtn