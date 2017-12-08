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

@Pending
Scenario: open API Wallets page
    Given I open the url "/"
    Then I pause for 3000ms
    And I expect the url to contain "/wallets/"
    And I expect that element "body" contains the text "API Wallets"
    When I click on the link "API Wallets"
    Then I expect that the path is "/wallets/hft"

Scenario: create new wallet
    Given I open the url "/"
    Then I pause for 3000ms
    And I expect the url to contain "/wallets/"
    And I expect that element "body" contains the text "API Wallets"
    When I click on the link "API Wallets"
    And I expect that the path is "/wallets/hft"
    And I expect that element "body" contains the text "New Wallet"
    When I click on the button "New Wallet"
    Then I pause for 1000ms
    And I expect that element ".drawer__body" becomes visible

