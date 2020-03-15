***Settings***       
Resource          ../Resources.robot

*** Test Cases ***
Prime Products
    [Documentation]    *Search For Prime Products*
    ...    1. Open Amazon in Browser
    ...
    ...    2. Type product name in the search bar
    ...   
    ...    3. Once Results are returned click Prime checkbox
    ...    
    ...    4. Count Products on a page
    ...   
    ...    5. Check if every product has a Prime logo under the description

    Open Amazon In Browser
    ${word}    Set Variable    Chair
    Input Text    ${SearchBar}    ${word} 
    Wait Until Element Is Visible    ${SearchButton}    
    Click Element    ${SearchButton}  
    Click Element    xpath=//li[@aria-label="Prime Eligible"]/span/a/div/label/i[@class="a-icon a-icon-checkbox"]
    Sleep    5s
    ${count}    Get Element Count    xpath=//div[@class="s-result-list s-search-results sg-row"]/div[contains(@data-cel-widget, "search_result_")]                
    FOR    ${idx}    IN RANGE    0    ${count}
        Element Should Be Visible    xpath=//div[@class="s-result-list s-search-results sg-row"]/div[@data-index="${idx}"]//i[@class="a-icon a-icon-prime a-icon-medium"]
    END

    