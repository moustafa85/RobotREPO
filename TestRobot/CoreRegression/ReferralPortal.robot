*** Settings ***
Library    SeleniumLibrary    

Default Tags    Smoke

*** Test Cases ***
Login
    Log    Hello Robot
# SeleniumPages    
    # Open Browser   https://google.com    chrome   
    # Set Selenium Implicit Wait    3
    # Input Text    name=q    selenium
    # Press Keys    name=q    ENTER
    # Sleep    2    
    # Close Browser
    
# CheckVariables   
    # Open Browser  ${URL}     ${Browser}
    # Set Selenium Implicit Wait    3
    # Input Text    name=q    @{SearchKeys}[0] @{SearchKeys}[1]        
    # Press Keys    name=q    ENTER
    # Sleep    2    
    # Close Browser

UsingKeywords
    SearchKeywords
    
*** Variables ***
${URL}     https://google.com
${Browser}    chrome
@{SearchKeys}     selenium     webdriver

*** Keywords ***
SearchKeywords
    Open Browser  ${URL}     ${Browser}
    Set Selenium Implicit Wait    3
    Capture Page Screenshot    
    Input Text    name=q    @{SearchKeys}[0] @{SearchKeys}[1]        
    Press Keys    name=q    ENTER
    Capture Page Screenshot    
    Sleep    2
    Capture Page Screenshot        
    Close Browser

