*** Keywords ***
Print All Items
    [Arguments]     @{items}
    FOR     ${item}     IN      @{items}
        Log To Console      ${item}
        END

*** Test Cases ***
TC001
    Print All Items  apple      banana      cherry      orange      strawberries