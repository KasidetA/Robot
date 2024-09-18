*** Test Cases ***
Loop Control Example
    FOR    ${number}    IN RANGE    1   10
        Run Keyword IF  ${number} == 5      Exit For Loop
        Run Keyword IF  ${number} == 3      Continue For Loop
        Log To Console      ${number}
    END
