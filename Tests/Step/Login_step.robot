*** Settings ***
Resource        ${EXECDIR}/Tests/Page/Login_page.robot

*** Keywords ***
User open app
    No operation

User fill username and password
    Tap loginMenu
    Set text username 
    Set text password
    Click loginBtn

User sucessfull login
    Assert alert title is "Success"
    Assert alert description is "You are logged in!"
    Close alertBtn
