*** Keywords ***
Create Fruits List
    ${fruits}   Create List     apple   banana  cherry
    [Return]    ${fruits}

*** Test Cases ***
TC001
    @{my_fruits}    Create Fruits List 
    Log To Console  ${my_fruits[0]}