*** Settings ***
Resource          ./Resources.robot

*** Keywords ***
Open Amazon In Browser 
    [Documentation]    *Open Amazon In Browser*
    ...
    ...    Steps:
    ...
    ...    1. Get the URL Based on Environment Name.
    ...
    ...    2. Get the Chrome browser options.
    ...
    ...    3. If the browser is Chrome create a webdriver instance with the Chrome browser options and open the URL.
    ...
    ...    4. If the browser is Firefox create a webdriver instance with the Firefox browser options and open the URL.
    ...
    ...    5. If the browser is neither chrome nor firefox, opens a browser with the provided URL.

    [Arguments]    ${url}=https://amazon.com    ${browser}=gc
    ${url}    Run Keyword If    $url.lower() == 'france'    Set Variable    https://amazon.fr
    ...    ELSE IF    $url.lower() == 'germany'    Set Variable    https://amazon.de 
    ...    ELSE IF    $url.lower() == 'japan'      Set Variable    https://amazon.co.jp 
    ...    ELSE IF    $url.lower() == 'uk'         Set Variable    https://amazon.co.uk 
    ...    ELSE IF    $url.lower() == 'india'      Set Variable    https://amazon.in
    ...    ELSE    Set Variable    ${url}
    SeleniumLibrary.Open Browser  url=${url}    browser=${browser}
    Maximize Browser Window

Start Test Setup
    [Documentation]    *Start Test Setup*
    ...
    ...    *Steps:*
    ...
    ...    1. Set Common Test Variables
    ...
    ...    2. Set Test Variables

    [Tags]    public
    [Arguments]    ${testName}    
    _Set Common Test Variables    
    Set Test Variables.${testName}

    
