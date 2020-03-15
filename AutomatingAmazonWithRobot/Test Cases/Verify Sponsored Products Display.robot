***Settings***       
Resource          ../Resources.robot

*** Test Cases ***
Verify Sponsored Products Display
   [Documentation]    *Add Product To Cart*
    ...
    ...    *Steps:*
    ...
    ...    1. Create a list of products.
    ...
    ...    2. Search for any random product from thr list.
    ...
    ...    3. Verify Sponsored Products display on a page.
    ...   
    ...    4. Veryfy the title of the product contains Search Word (Not Implemented!!)
    
    ${products}    Create List    Apple    Ball    Coffee    Tie    Umbrella    
    ...    Cat    Dog    Toys    T-shirt    Diapers    Colgate    Kitchen
    ...    Toilet    Lipstick    Shampoo    TV    Piano    alarm    Fork
    ...    notepad    humster    snickers    bar    lock    clock   toothbrush
    ...    Loreal    Samsung   Yamaha    Monster    Gift    Holder    Cup
    ...    Book    cup    cake    brother    Nespresso    Perl    Jewerly
    ...    Potty    water    laptop    pods    always    flower    solution    Xbox    
    Set Test Variable    ${products} 
    Open Amazon In Browser
    ${word}    Evaluate    random.choice(${products})    random
    Input Text    ${SearchBar}    ${word} 
    Click Element    ${SearchButton}  
    Click Element    css:.a-text-normal
    Element Should Be Visible    xpath=//a[contains(@target,'_top') and contains(@data-click-index, '0') and contains(@class, 'sb_1')]    
    Element Should Be Visible    xpath=//a[contains(@target,'_top') and contains(@data-click-index, '1') and contains(@class, 'sb_1')]
    Element Should Be Visible    xpath=//a[contains(@target,'_top') and contains(@data-click-index, '2') and contains(@class, 'sb_1')]
