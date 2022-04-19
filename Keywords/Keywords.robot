*** Settings ***
Library           String
Library           SeleniumLibrary
Resource          ../PageObjects/Register.robot
Resource          ../Resources/test.data.robot
Resource          Keywords.robot

*** Keywords ***
RandomFirstName
    ${RandomFirstName}    Generate Random String    10    [LOWER]
    Set Global Variable    ${RandomFirstName}

RandomLastName
    ${RandomLastName}    Generate Random String    12    [LOWER]
    Set Global Variable    ${RandomLastName}

RandomUsername
    ${random1}    Generate Random String    10    [NUMBERS]
    ${RandomUsername}    Catenate    User${random1}
    Set Global Variable    ${RandomUsername}

RandomEmail
    ${random2}    Generate Random String    15    [LOWER]
    ${RandomEmail}    Catenate    ${random}@gmail.com
    Set Global Variable    ${RandomEmail}

RandomPassword
    ${RandomPassword}    String.Generate Random String    15
    Set Global Variable    ${RandomPassword}

Common
    Open Browser    ${homepage}    ${browser}
    Maximize Browser Window

Register
    Input Text    ${FirstName_Input_Register}    ${FirstName}
    Input Text    ${LastName_Input_Register}    ${LastName}
    DateOfBirth
    Input Text    ${Email_Input_Register}    ${Random_Email}
    Input Text    //input[@id='Company']    KS Sport 77
    Select Checkbox    //input[@id='Newsletter']
    Input Password    //input[@id='Password']    ${ValidPassword}
    Input Password    //input[@id='ConfirmPassword']    ${ValidPassword}
    Click Element    //button[@id='register-button']
    Page Should Contain    Your registration completed

DateOfBirth
    Select From List By Value    //select[@name='DateOfBirthDay']    20
    Select From List By Label    //select[@name='DateOfBirthMonth']    March
    Select From List By Value    //select[@name='DateOfBirthYear']    1988

Search
    [Arguments]    ${search_item}    ${search_item1}
    Click Element    //input[@id='small-searchterms']
    Input Text    //input[@id='small-searchterms']    ${search_item}
    Click Element    //button[@type='submit']

CloseBrowser
    Close All Browsers
