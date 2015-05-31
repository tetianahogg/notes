Feature: Logging in
  As user I can create, update, delete notes

  Scenario: valid credentials
    Given I am on the login, welcome page
    When I provide email address "test@admin.com"
    And I provide the password "kakashka"
    Then I logged in successfully
    And I see "You are logged in" message

  @wip
  Scenario: not valid credentials
    Given I am on the login, welcome page
    When I provide email address "foo"
    And I provide the password "bar"
    Then I am not logged in
    And I see "You are not logged in" message
