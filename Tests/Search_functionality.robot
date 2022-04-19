*** Settings ***
Suite Setup       Common
Suite Teardown    Keywords.CloseBrowser
Library           SeleniumLibrary
Resource          ../Keywords/Keywords.robot
Resource          ../Resources/test.data.robot

*** Test Cases ***
TC_SEARCH _004-Test if search works for a less then 3
    Search    ${search_item}    ${search_item1}
    Page Should Contain    Search term minimum length is 3 characters

TC_SEARCH _007-Test if auto-suggestions displayed
    Search    ${search_item1}     ${search_item}
    sleep    2
    Mouse Over    //input[@class="search-box-text ui-autocomplete-input"]
    Click Element    //input[@class="search-box-text ui-autocomplete-input"]
    Page Should Contain    Asus N551JK-XO076H Laptop
