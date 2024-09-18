*** Variables ***
@{list}     robot   framework   python  java

*** Test Cases ***
test - loop for in
    loop in range   5

*** Keywords ***
loop in
#for in use for lopp in list        for ... in list
    FOR     ${value}    IN      @{list}
        Log To Console      ${value}
#exit for loop if exit loop when if run
        Exit For Loop If    "${value}"=="python"
    END

loop in range
#for in use for lopp in number
    [Arguments]     ${qty}
    FOR     ${value}    IN RANGE    ${qty}
        Log To Console      ${value}
    END