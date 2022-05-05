*** Settings ***
Library    Selenium2Library      

*** Test Cases ***
This test is individual test
    log    Hi friends...
    
FirstSeleniumTest
    Open Browser    https:google.com    Chrome
    Set Browser Implicit Wait    5
    Input Text    name=q                Scoobydoo image
    Press Keys    name=q    ENTER   
    Sleep    6
    Close Browser
    log    Test completed