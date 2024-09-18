*** Settings ***
Variables    config.yaml
Library      SeleniumLibrary

*** Test Cases ***
TC001
    Open Browser    ${app_url}  gc
    Input Text    username_field    ${credentials['username']}
    Input Text    password_field    ${credentials['password']}
