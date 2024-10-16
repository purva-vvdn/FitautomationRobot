*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://example.com/login
${USERNAME}     your_username
${PASSWORD}     your_password
${BROWSER}      headlesschrome

*** Test Cases ***
Login In Headless Mode
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Input Text      id=username     ${USERNAME}
    Input Text      id=password     ${PASSWORD}
    Click Button    id=loginButton
    Wait Until Page Contains    Welcome, ${USERNAME}
    Close Browser
