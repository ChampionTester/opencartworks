Feature: To check links on homepage
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
    When User clicks on WishList link
    Then User is directed to customer login page

  @test
  Scenario:
    Given User is on homepage
    When User clicks on the gift certificate link
    Then User is directed to Purchase a Gift Certificate page

  @test
  Scenario:
    Given User is on homepage
    When User clicks on the Brands link
    Then User is directed to Brands page

  @test
  Scenario:
    Given User is on homepage
    When User clicks on About Us link
    Then About Us page is displayed

  @test
  Scenario:
    Given User is on homepage
    When User clicks on the search button
    And  enters men's fashion in the search bar
    Then User is directed to search results for men's fashion

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
