*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test
    set selenium speed  0.5 second
    open browser  https://www.iperfumy.pl/  ff
    mouse over  //a[@id = 'menuLink_8']
Choose prom
    wait until element contains  //a[@title = 'Promocja perfum']  Promocja perfum  5s
    click link  //a[@title = 'Promocja perfum']
Filter
    click element  //input[@id='price-to']
    repeat keyword  5x  press key  //input[@id='price-to']  \\127
    press key  //input[@id='price-to']  \\8
    input text  //input[@id='price-to']  200
    press key  //input[@id='price-to']  \\13
    click link  //a[@title='Woda perfumowana']
Choose sec item
    click element  //ul[@id='productsList']/li[2]
    #click link  //a[@class='btn btn-darr']
    #click element  //label[@class='inp-number' and @for='count1']/a[@class='inp-number-btn inc']
    #click button  //button[@class='DeliveryTime__ChevronIconWrapper-s12eum47-4 jelQqB']
    #//div[@class='DeliveryTime__DeliveryList-s12eum47-3 gdImyq']/div/div[3]
    #click button  //button[@id='pd-buy-button']
    #get value  //input[@id='count60757']

    close browser

*** Keywords ***
Provided precondition
    Setup system under test