***Settings***       
Resource          ../Resources.robot

*** Test Cases ***
Search For Product And Add To Cart
   [Documentation]    *Search For Product And Add To Cart*
    ...
    ...    *Steps:*
    ...
    ...    1. Create a list of products.
    ...
    ...    2. Search for any random product from thr list.
    ...
    ...    3. Chose product from results.
    ...   
    ...    4. Verify 'Add To Cart' button is visible.
    ...    
    ...    5. Add item to the cart.
    ...    
    ...    6. Navigate To The Cart and Verify Item was added.

    ${products}    Create List    Ball    Coffee    Tie    Umbrella    
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
    Click Element    css:.nav-search-submit  
    Click Element    ${SearchButton}
    Click Element    xpath=//a[contains(@target,'_top') and contains(@data-click-index, '0') and contains(@class, 'sb_1')]
    Sleep    10 sec
    Click Element    xpath=//*[@id="add-to-cart-button"]
    Click Element    id=hlb-view-cart-announce
    



        

