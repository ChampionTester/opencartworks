Feature: To check registration functionality

  Scenario Outline:  to check registration feature
    Given User is on register account page
    When User enters "<firstname>"
    And User enters "<lastname>"
    And User enters "<emailaddress>"
    And User enters "<telephonenumber>"
    And User enters "<password>"
    And User enters confirm password
    And User clicks on yes on radio button to subscribe to newsletter
    And User clicks on continue button
    Then User should be able to see message as "<message>"


    Examples:
     |  firstname |   lastname|  emailaddress   |  telephonenumber  |  password  |     message                                        |
     |            |   Mack    |   sam@gmail.com |  0101223          |  alpha123  |  First name must be between 1 and 32 characters!   |
     |  Sam       |           |   sam@gmail.com |  0101223          |  alpha123  |     Last Name must be between 1 and 32 characters! |
     | Sam        |  Mack     |                 |  0101223          |  alpha123  |    E-Mail Address does not appear to be valid!     |
     |  Sam       |  Mack     |   sam@gmail.com |                   |  alpha123  |     Telephone must be between 3 and 32 characters! |
     |  Sam       |   Mack    |   sam@gmail.com | 0101223           |            |     Password must be between 4 and 20 characters!  |
     |  Sam       |   Mack    |   sam@gmail.com |  0101223          | alpha123   |    Your Account has been created                   |
