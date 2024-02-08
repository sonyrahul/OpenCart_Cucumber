Feature: Login with Valid Credentials

  @sanity @regression
  Scenario: Successful Login with Valid Credentials
    Given the user navigates to login page
    When user enters email as "jc.hudson14@example.com" and password as "YbTt@005"
    And the user clicks on the Login button
    Then the user should be redirected to the MyAccount Page

# use ctrl + / to enable comment

  @regression
  Scenario Outline: Login Data Driven
    Given the user navigates to login page
    When user enters email as "<email>" and password as "<password>"
    And the user clicks on the Login button
    Then the user should be redirected to the MyAccount Page

    Examples: 
      | email                      | password |
      | jc.hudson@example.com      | YbTt@005 |
      | jayson.dibbert@example.com | YryI@372 |
