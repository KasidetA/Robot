*** Keywords ***
Print User Info
    [Arguments]     &{user_info}
    Log To Console  ${user_info['name']}
    Log To Console  ${user_info['age']}
    Log To Console  ${user_info['city']}

*** Test Cases ***
TC001
    ${user_data}    Create Dictionary    name=Kong    age=21    city=Tak
    Print User Info    &{user_data}