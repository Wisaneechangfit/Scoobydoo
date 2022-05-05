*** Settings ***
Library    Selenium2Library      

*** Test Cases ***
#This test is individual test
   # log    Hi friends...
    
#FirstSeleniumTest
    #Open Browser    https:google.com    Chrome
    #Set Browser Implicit Wait    5
    #Input Text    name=q                Scoobydoo image
    #Press Keys    name=q    ENTER   
    #Sleep    6
    #Close Browser
    #log    Test completed
    

SampleLoginTest
    [Documentation]    This is sample login test
    Open Browser    ${URL}    Chrome
    Set Browser Implicit Wait    5
    Input Text    id=txtUsername    ${CREDENTIALS}[username]
    Input Password    id=txtPassword    ${logindata}[password]
    Click Button    id=btnLogin
    Sleep    2
    Click Element    id=welcome
    #sleep    2
    Click Element    link=Logout
    sleep    2
    Close Browser
    Log           Test complete
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
&{CREDENTIALS}    username=Admin    password=admin123
&{logindata}    username=Admin    password=admin123


