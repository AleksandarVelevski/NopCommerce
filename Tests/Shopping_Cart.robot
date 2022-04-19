*** Settings ***
Suite Setup       Common
Suite Teardown    Keywords.CloseBrowser
Library           SeleniumLibrary
Resource          ../Resources/test.data.robot
Resource          ../Keywords/Keywords.robot

*** Test Cases ***
TC_CART_002-Remove product from Cart
    Click Element    (//*[@href="/books"])[1]
    Click Button    (//*[@class="button-2 product-box-add-to-cart-button"])[3]
    Click Element    (//a[@href="/cart"])[1]
    Input Text    (//input[@type="text"])[2]    0
    Click Button    //button[@id="updatecart"]
    Page Should Contain    Your Shopping Cart is empty!
    Location Should Be    https://demo.nopcommerce.com/cart

TC_CART_008-Check the estimate shipping option
    Click Element    (//*[@href="/books"])[1]
    Click Button    (//*[@class="button-2 product-box-add-to-cart-button"])[3]
    Click Element    (//a[@href="/cart"])[1]
    Click Element    //a[@id="open-estimate-shipping-popup"]
    Sleep    3
    Comment    Wait Until Element Is Visible    //div[@id="estimate-shipping-popup"]
    Select From List By Label    //select[@id="CountryId"]    Macedonia
    Input Text    //input[@id="ZipPostalCode"]    7000
    Click Button    (//button[@class="button-2 apply-shipping-button"])[1]
