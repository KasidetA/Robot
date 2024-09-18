*** Settings ***
Variables    variables.yaml

***Test Cases ***
TC001
    Log To Console  ${user['name']}     
    Log To Console  ${user['age']}     
    Log To Console  ${user['city']}