*** Settings ***
Resource          ../Keywords/Keywords.robot
Resource          ../PageObjects/Register.robot
Resource          test.data.robot

*** Variables ***
${ValidUsername}    alek12
${ValidPassword}    velevski12
${browser}        chrome
${homepage}       https://demo.nopcommerce.com/
${InvalidUsername}    alek
${InvalidPassword}    velevski
${ValidEmail}     velevskialek@gmail.com
${InvalidEmail}    alekvelevski@gmail.com
${search_item}    HP
${search_item1}    asu
