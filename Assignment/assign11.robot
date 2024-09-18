*** Keywords ***
Create User Info
    ${user_info}    Create Dictionary   name=John   age=30  city=Bangkok
    [Return]    ${user_info}

*** Test Cases ***
TC001
    &{user}     Create User Info
    Log To Console      Name:${user['name']}