*** Settings ***
Library		SeleniumLibrary




*** Variables ***



*** Test cases ***
test 1
    Basic if else   72


*** Keywords ***
Basic if else
    [Arguments]     ${text}
    IF          ${text}>=90
        Log To Console      You got A grade.
    ELSE IF      ${text}>=80
        Log To Console      You got B grade.
    ELSE IF      ${text}>=70
        Log To Console      You got C grade.
    ELSE IF      ${text}>=60
        Log To Console      You got D grade.
    ELSE
        Log To Console      You got F grade.
    END