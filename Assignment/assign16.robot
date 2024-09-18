*** Keywords ***
Calculate Factorial
    [Arguments]    ${number}
    Run Keyword IF    ${number}==1    Return From Keyword    1
    ${previous}    Calculate Factorial    ${number}-1
    ${result}    Set Variable    ${number} * ${previous}
    Return From Keyword    ${result}


*** Test Cases ***
Test Factorial Calculation
    ${result}    Calculate Factorial    5
    Should Be Equal    ${result}    120
