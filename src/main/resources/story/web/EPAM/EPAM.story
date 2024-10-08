Scenario: Check the title is correct
Given I am on main application page
Then page title is equal to `EPAM | Software Engineering & Product Development Services`


Scenario: Check the ability to switch Light / Dark mode
Given I am on main application page
When I click on element located by `By.xpath(//*[@class='theme-switcher'])`


Scenario: Check that allow to change language to UA
Given I am on main application page
When I click on element located by `By.xpath(//*[@class='location-selector__button'])`
When I click on element located by `By.xpath(//*[@lang='uk'])`
Given I am on page with URL `https://careers.epam.ua/`


Scenario: Check the policies list
Given I am on main application page
When I scroll element located by `<buttonLocator>` into view
Given I am on page with URL `<URL>`
Examples:
|buttonLocator                                                                       |URL                                                                          |
|By.xpath(//*[@class='policies']//li/a[contains(text(), 'INVESTORS')])               |https://investors.epam.com/overview/default.aspx                             |
|By.xpath(//*[@class='policies']//li/a[contains(text(), 'COOKIE POLICY')])           |https://www.epam.com/cookie-policy                                           |
|By.xpath(//*[@class='policies']//li/a[contains(text(), 'OPEN SOURCE')])             |https://www.epam.com/services/engineering/open-source                        |
|By.xpath(//*[@class='policies']//li/a[contains(text(), 'APPLICANT PRIVACY NOTICE')])|https://www.epam.com/applicant-privacy-notice                                |
|By.xpath(//*[@class='policies']//li/a[contains(text(), 'PRIVACY POLICY')])          |https://privacy.epam.com/core/interaction/showpolicy?type=CommonPrivacyPolicy|
|By.xpath(//*[@class='policies']//li/a[contains(text(), 'WEB ACCESSIBILITY')])       |https://www.epam.com/web-accessibility-statement                             |


Scenario: Check that allow to switch location list by region
Given I am on main application page
Then text `Our Location` exists
When I click on element located by `<buttonLocation>`
Then text `<country>` exists
Examples:
|buttonLocation                             |country      |
|By.xpath(//a[contains(text(), 'AMERICAS')])|UNITED STATES|
|By.xpath(//a[contains(text(), 'EMEA')])    |ARMENIA      |
|By.xpath(//a[contains(text(), 'APAC')])    |AUSTRALIA    |


Scenario: Check the search function
Given I am on main application page
When I click on element located by `By.xpath(//*[@class='header-search-ui header-search-ui-23 header__control'])`
When I enter `AI` in field located by `By.xpath(//input[@id='new_form_search'])`
When I click on element located by `By.xpath(//span[contains(text(), 'Find')])`
Then text `results for "AI"` exists


Scenario: Check form's fields validation
Given I am on page with URL `https://www.epam.com/about/who-we-are/contact`
When I click on element located by `<buttonFieldsValidation>`
Examples:
|buttonFieldsValidation                                                                               |
|By.xpath(//div[@data-required='true']/label[contains(text(), 'Select the Reason for Your Inquiry*')])|
|By.xpath(//div[@data-required='true']/label[contains(text(), 'First Name*')])                        |
|By.xpath(//div[@data-required='true']/label[contains(text(), 'Last Name*')])                         |
|By.xpath(//div[@data-required='true']/label[contains(text(), 'Email*')])                             |
|By.xpath(//div[@data-required='true']/label[contains(text(), 'Phone*')])                             |
|By.xpath(//div[@data-required='true']/label[contains(text(), 'Location*')])                          |


Scenario: Check tha the Company logo on the header lead to the main page
Given I am on page with URL `https://www.epam.com/about`
When I click on element located by `By.xpath(//div[@class='header__logo-container'])`
Then the page has the relative URL 'https://www.epam.com'


Scenario: Check that allows to download report
Given I am on page with URL `https://www.epam.com/about`
When I click on element located by `By.xpath(//span[contains(text(),'DOWNLOAD')])`
When I create file with content `EPAM Company` at path `EPAM_Corporate_Overview_Q4_EOY.pdf`
