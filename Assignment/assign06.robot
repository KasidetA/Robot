*** Test Cases ***
TC001
    Set Global Variable     ${GLOBAL_VAR}   Global Value
    Log To Console      ${GLOBAL_VAR}
    Local
*** Keywords ***
Local
    Set Local Variable      ${LOCAL_VAR}    Local Value
    Log To Console      ${LOCAL_VAR}