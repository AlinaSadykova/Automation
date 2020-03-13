***Settings***       
Resource          ./Resources.robot

*** Test Cases ***
Add Product To Cart
    ${products}    Create List    Apple    Ball    Coffee    Tie    Umbrella    
    ...    Cat    Dog    Toys    T-shirt    Diapers    Colgate    Kitchen
    ...    Toilet    Lipstick    Shampoo    TV    Piano    Table    Fork
    ...    notepad    humster    snickers    bar    lock    clock   toothbrush
    ...    Loreal    Samsung   Yamaha    Monster    Gift    CD    Holder    Cup
    ...    Book    cup    cake    brother    Nespresso    Perl    Jewerly
    ...    Potty    water    laptop    pods    always    flower    solution    Xbox    
    Set Variable    ${products} 
    Open Amazon In Browser
    ${word}    Evaluate    random.choice(${products})    random
    Input Text    id=twotabsearchtextbox    ${word} 
    Click Element    css:.nav-search-submit  
    Click Element    css:.a-text-normal
    Click Element    //*[@id="search"]/div[1]/div[2]/div/span[4]/div[1]/div[1]/div/span/div/div/div/div/div[2]/h2/a
    Click Element    id=add-to-cart-button
    Click Element    id=hlb-view-cart-announce
    Element Should Contain    span.a-size-medium.sc-product-title    ${word}       
    # Mouse Over    id=nav-link-accountList
    # Click Element    xpath=/html/body/div[1]/header/div/div[1]/div[2]/div/a[2]/span[1]
    # Input Text    id=ap_email    alinasadykova@yahoo.com
    # Click Element    id=continue
    # Input Text    id=ap_password    Sara94460
    # Click Element    id=signInSubmit
   
        

