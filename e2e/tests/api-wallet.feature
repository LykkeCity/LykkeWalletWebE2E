Feature: Create and edit API Wallet
    As a User of LykkeWallet
    I want to create and edit API Wallet
    So I can use it for traiding and transfer

Scenario: login with valid credentials
    Given I open the url "/"
    When I set env "REACT_APP_LOGIN" to the inputfield "#email"
    And I set env "REACT_APP_PASSWORD" to the inputfield "#password"
    And I press "Enter"
    And I pause for 3000ms
    Then I expect the url to contain "/wallets/"

Scenario: open API Wallets page
    Given I open the url "/"
    Then I pause for 3000ms
    And I expect the url to contain "/wallets/"
    And I expect that element "body" contains the text "API Wallets"
    When I click on the link "API Wallets"
    Then I expect that the path is "/wallets/hft"

Scenario: open new wallet drawer
    Given I open the url "/wallets/hft"
    Then I pause for 3000ms
    And I expect that element "body" contains the text "New Wallet"
    When I click on the element ".wallet-tabs .btn--primary"
    Then I pause for 1000ms
    And I expect that element ".drawer__body" becomes visible
    And I expect that element ".drawer__body" contains the text "New API Wallet"
    And I expect that element ".drawer__body" contains the text "STEP 1 OF 2"

Scenario: fill new wallet form
    Given I open the url "/wallets/hft"
    Then I pause for 4000ms
    When I click on the element ".wallet-tabs .btn--primary"
    Then I expect that element ".drawer__body" becomes visible
    And I expect that element ".drawer__body" contains the text "Name of wallet"
    And I expect that element ".drawer__footer .btn--primary" is not enabled
    When I set "E2E test api wallet" to the inputfield "#name"
    And I set "E2E wallet description" to the inputfield "#desc"
    Then I expect that element ".drawer__footer .btn--primary" is enabled
