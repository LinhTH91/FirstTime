*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${PATH_DRIVER}  ../../Libraries/Driver/chromedriver.exe
${URL}  https://www.youtube.com/

*** Keywords ***
open website
    create Webdriver  Chrome  executable_path= ${PATH_DRIVER}
    go to  ${URL}


close website
    close browser