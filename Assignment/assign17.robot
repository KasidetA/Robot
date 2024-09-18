*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Example Test With Setup And Teardown
    [Setup]     Open Browser    http://example.com    gc
    [Teardown]      Close Browser
    Log To Console    Test is running
