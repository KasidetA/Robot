*** Keywords ***
Print Fruits
    [Arguments]     @{fruits}
    FOR     ${fruit}    IN      @{fruits}
        Log To Console      ${fruit}
        END

*** Test Cases ***
TC001
    Print Fruits    apple     banana    cherry  