*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Variables/variables1.robot

*** Keywords ***
Start Test
    open browser  about:blank  ${BROWSER}
    maximize browser window
End Test
    close browser

Check if menu is present
    wait until page contains element  ${MENU}
    page should contain element  ${MENU BLOCKS}  ${MENU QUANTITY}

Choose Menu item from Brands
    [Arguments]  ${main menu B}  ${submenu B}  ${menu item B}
    mouse over  //nav/ul/li/a[contains(., "${main menu B}")]
    wait until element is visible  //nav/ul/li/a[contains(., "${main menu B}")]
    click element  //a[contains(., "${main menu B}")]/following::h3[contains(., "${submenu B}")]/following::ul/li/a[contains(., "${menu item B}")]

Choose Menu item from others
    [Arguments]  ${main menu}  ${submenu}  ${menu item}
    mouse over  //nav/ul/li/a[contains(., "${main menu}")]
    wait until element is visible  //nav/ul/li/a[contains(., "${main menu}")]
    click element  //a[contains(., "${main menu}")]/following::a[contains(., "${submenu}")]/following::li/a[contains(., "${menu item}")]