Feature: To check functionality of homepage
  @test
  Scenario:
    Given When user is on homepage
    When User clicks on the close button of the subscribe to newsletter popup
    Then The popup should be closed

  @test
  Scenario:
    Given User is on homepage
    When User clicks on My Account link
    And  selects Register on the dropdown menu
    Then User is directed to Register Account page

   @test
     Scenario:
     Given User is on homepage
     When User clicks on My Account link
     And selects login  on the dropdown menu
     Then User is directed to login page


  @test
  Scenario:
    Given User is on homepage
    When User enters valid email address
    And clicks on Subscribe to Newsletter button
    Then Subscription successfull message is displayed

  @test
  Scenario:
    Given User is on homepage
    When User enters an invalid email address
    And clicks on Subscribe to Newsletter button
    Then Invalid email message is displayed


  @test
  Scenario:
    Given User is on homepage
    When User clicks on the search button
    And enters the search term Incididunt picanha
    And clicks on the enter button
    Then User is directed to the search results page containing Incididunt picanha

  @test
  Scenario:
    Given User is on home page
    When User clicks on the My Account link and selects login from the drop down menu
    Then User is directed to Sign in or register pop up


  @test
    Scenario Outline:
      Given User is on homepage
      When User clicks on "<links>"
      Then User is directed to "<page>"

      Examples:
        |        links                                      |                   page                                            |
        |    FURNITURES                                     |                Furnitures                                         |
        |    TOWELS CLOUD                                   |             Towels Cloud                                          |
        |    FASHION                                        |             Fashion                                               |
        |   HANDBAGS                                        |             Handbags                                              |
        |   ELECTRONICS                                     |             Electronics                                           |
        |   WATCHES                                         |             Watches                                               |
        |   COLLECTIONS                                     |             Collections                                           |
        |   KITCHENWARES                                    |             Kitchenwares                                          |
        |   HEALTH & BEAUTY                                 |             Health & Beauty                                       |
        |   SMARTPHONE                                      |             Smartphone                                            |
        |   Recent View                                     |             Recent View Products                                  |
        |   Support 24/7                                    |             Support 24/7                                          |
        |   Affiliates                                      |             Affiliate Program                                     |
        |   Site Map                                        |             Site Map                                              |
        |   Specials                                        |             Special Offers                                        |
        |   FAQ                                             |             FAQ                                                   |
        |   Returns                                         |             Product return                                        |
        |   About Us                                        |              About Us                                             |
        |   Brands                                          |              Brands                                               |
        |   Gift certificate                                |              Purchase a Gift Certificate                          |
