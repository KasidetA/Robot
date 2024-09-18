*** Keywords ***
Greet User
    [Arguments]     ${name}=Guest
    Log To Console      Hello,${name}
*** Test Cases ***
TC001
    Greet User  
TC002
    Greet User  John