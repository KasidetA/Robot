*** Variables ***
@{hero}     ironman     batman      captain     superman    hulk      shazam      thor       flash     blackwidow      wonder woman        hawkeye

*** Test Cases ***
Test assignment
    ${i}    Set Variable    0
    FOR     ${index}    IN      @{hero}
        ${number}   Evaluate    ${i}%2
        IF      ${number}==0
            Log To Console      ${index}
        END
        ${i}    Evaluate    ${i}+1
        Exit For Loop If    "${index}"=="blackwidow"
    END