*** Settings ***
Resource          Register.robot
Resource          ../Keywords/Keywords.robot
Resource          ../Resources/test.data.robot

*** Variables ***
${FirstName_Input_Register}    //input[@id='FirstName']
${LastName_Input_Register}    //input[@id='LastName']
${Email_Input_Register}    //input[@id='Email']
${FirstName}      ${RandomFirstName}
${LastName}       ${RandomLastName}
${Random_Email}    ${RandomEmail}
