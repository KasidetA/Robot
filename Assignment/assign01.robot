*** Keywords ***
Validate Age
    [Arguments]     ${age}
    IF      ${age}>18
        Log To Console      "Eligible for voting"
    ELSE
        Log To Console      "Not eligible for voting"
    END

*** Test Cases ***
TC001
    Validate Age  16
TC002
    Validate Age  20