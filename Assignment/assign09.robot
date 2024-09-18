*** Keywords ***
Calculate Square
    [Arguments]     ${number}   
    ${result}		Evaluate	${number}*${number}
    [Return]	${result}
    Log To Console  ${result}
*** Test Cases ***
TC001
    ${square}   Calculate Square  4
    Should Be Equal    ${square}    16