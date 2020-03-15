***Settings***       
Resource          ../Resources.robot

*** Test Cases ***
Verify Store Page
    [Documentation]    *Verify Store Page*
    ...    1. Open Amazon in Browser.
    ...
    ...    2. Type Apple in the search bar.
    ...   
    ...    3. Click the Store Image.
    ...
    ...    4. Verify Apple Store page dispalys.
    ...
    ...    5. Go Back to the search results.
    ...
    ...    6. Click 'Shop Apple' link.
    ... 
    ...    7. Verify Apple Store page dispalys. 

    Open Amazon In Browser    Japan
    Input Text    ${SearchBar}    Apple 
    Wait Until Element Is Visible    ${SearchButton}    timeout=5    
    Click Element    ${SearchButton}
    Wait Until Element Is Visible    xpath=//div[@class="a-section s-border-bottom"]/span/div/div//div[@data-click-el="brandlogo"]/img    timeout=5    
    Click Element    xpath=//div[@class="a-section s-border-bottom"]/span/div/div//div[@data-click-el="brandlogo"]/img
    Wait Until Element Is Visible    xpath=//div[@class="stores-page"]    timeout=5
    Go Back
    Wait Until Element Is Visible    xpath=//div[@class="a-section s-border-bottom"]/span/div/div//div[contains(@class, "sb_2")]/span[@data-click-el="headline"]    timeout=5    
    Click Element    xpath=//div[@class="a-section s-border-bottom"]/span/div/div//div[contains(@class, "sb_2")]/span[@data-click-el="headline"]
    Wait Until Element Is Visible    xpath=//div[@class="stores-page"]    timeout=5