Feature: To check functionality of log in feature
@test
  Scenario:
   Given  User is on home page
     And User clicks on the My Account link and selects login from the drop down menu
    And User is directed to Sign in or register pop up
    When User enters valid email address and password
    And clicks on the Login button
    Then User is directed to Account page



