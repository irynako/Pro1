*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords/Keywords.robot
Resource  ../Resources/Variables/variables1.robot

Suite Setup  Start Test
#Suite Teardown  End Test

*** Test Cases ***
Start
    go to  ${SITE URL}
    location should be  ${SITE URL}
    Check if menu is present

Choose item from menu
    Choose Menu item from Brands  Brands  Featured Brands  Jimmy Choo
    Choose Menu item from others  Women's  Scents  Floral

#Filter
#    click element  //input[@id='price-to']
#    repeat keyword  5x  press key  //input[@id='price-to']  \\127
#    press key  //input[@id='price-to']  \\8
#    input text  //input[@id='price-to']  200
#    press key  //input[@id='price-to']  \\13
#    click element  //span[contains(text(), 'Zgadzam się.')]
#    #wait until page contains  //a[@title='Woda perfumowana']
#    click link  //a[@title='Woda perfumowana']
#Choose sec item
#    set selenium speed  0.5 second
#    click element  //ul[@id='productsList']/li[2]
#    ${ITEM_LOC}=  get location
#    #click element  //span[contains(text(), 'Zgadzam się.')]
#    #wait until element is visible  //span[@class='exponea-close']/span[@class='exponea-close-cross']
#    #wait until element is visible  //a[@class='exponea-banner exponea-popup-banner exponea-animate exponea-animate']//span[@class='exponea-close-cross']
#    click button  //button[@id = 'pd-buy-button']
#
#    select checkbox  //input[@id = 'giftPackage']
#    select radio button  giftPackagePattern  giftPackagePattern2
#    #${cart_item}=  get value  //h2[@class='title']/a
#    page should contain link  //h2[@class='title']/a[@href='${ITEM_LOC}']
