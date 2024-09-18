*** Test Cases ***
Age Verification
    ${age}      Set Variable   20
    IF  ${age}>18
        Log To Console      You are an adult.
    ELSE IF     ${age}==18
        Log To Console      You just became an adult.
    ELSE
        Log To Console      You are underage.
    END