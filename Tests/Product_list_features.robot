*** Settings ***
Suite Setup       Common
Suite Teardown    Keywords.CloseBrowser
Library           SeleniumLibrary
Resource          ../Keywords/Keywords.robot
Resource          ../Resources/test.data.robot

*** Test Cases ***
TC_PRODUCT_006-Verify Add to cart should work properly with unawailible products
    Click Element    //ul[@class='top-menu notmobile']//a[normalize-space()='Electronics']
    Click Element    //li[@class='inactive']//a[normalize-space()='Camera & photo']
    Click Element    //h2[@class='product-title']//a[normalize-space()='Apple iCam']
    Page Should Contain    Availability: Out of stock
    Location Should Be    https://demo.nopcommerce.com/apple-icam
    #da kreiram varijabli za xpath i keyword za navigiranje

TC_PRODUCT_009-Compare two products
    Click Element    //ul[@class='top-menu notmobile']//a[normalize-space()='Electronics']
    Click Element    //li[@class='active last']//a[normalize-space()='Cell phones']
    Click Button    (//*[@title="Add to compare list"])[2]
    Click Button    (//*[@title="Add to compare list"])[3]
    Wait Until Element Is Visible    (//*[@href="/compareproducts"])[1]
    Click Element    (//*[@href="/compareproducts"])[1]
    Element Should Contain    (//*[@href="/compareproducts"])[1]    Compare products
    Location Should Be    https://demo.nopcommerce.com/compareproducts
