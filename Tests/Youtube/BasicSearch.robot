*** Settings ***
Documentation   Basic Searching Function Youtube
Library  SeleniumLibrary
Library  DataDriver  ../../Resources/Data/PrepareData.xlsx  sheet_name=Sheet1
Resource  ../../Resources/Common/Action.robot
Test Setup  open website
Test Teardown  close website
Test Template  search function

*** Variables ***




*** Test Cases ***
TC_01_Verify_Basic_Searching_Function_For_Youtube
    [Documentation]  Verify Basic Searching Function for Youtube
    [Tags]  Functional

    search function

*** Keywords ***
search function
#Step 1: Redirect to https://www.youtube.com/ (Test Setup)
    #open website

#Step 2: Enter keyword for Searching
    [Arguments]  ${key_word}
    input text  //input[@id="search"]  ${key_word}

#Step 3: Click Search Icon
    press keys  //button[@id="search-icon-legacy"]  [Return]

#Step 4: Verify searching result
    wait until element is visible  //span[contains(text(), "${key_word}")]
    page should contain element  //span[contains(text(), "${key_word}")]
    #page should contain  ${key_word}

#Step 5: Click to watch
    wait until element is enabled  //span[contains(text(), "${key_word}")]
    click element  //span[contains(text(), "${key_word}")]

#Step 6: Close Browser (Test Teardown)
    #close website



