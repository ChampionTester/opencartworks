Feature: To test functionality of Shopping Cart feature
@test
  Scenario:
    Given User is on homepage
    And  User clicks on the search button
    And enters the search term Incididunt picanha
    And clicks on the enter button
    And User is directed to the search results page containing Incididunt picanha
    When User clicks on red colour
    And User adds one item to cart
    Then The User should be able to view the success message that item has been added to the shopping cart

  @test
  Scenario Outline:
    Given User is on homepage
    And  User clicks on the search button
    And enters the search term "<search>"
    And clicks on the enter button
    And User is directed to the search results page containing "<search results>"
    When User clicks on "<colour>"
    And User adds "<n>" items to cart
    Then The User should be able to view the success message that item has been added to the shopping cart

    Examples:
    |    search                  |      search results                   |      colour     |    n    |
    |Ercitation incididunt       |      Ercitation incididunt            |    red          |  1      |
    | Ercitation incididunt      |        Ercitation incididunt          |   blue          |  2      |
    | Ercitation incididunt      |       Ercitation incididunt           |   yellow        |  1      |
    | Ercitation incididunt      |      Ercitation incididunt            |   green         |  3      |


  @test
Scenario:
    Given User is on Incididunt picanha product page
    And User clicks on red colour
    And User has added one item to cart
    When User clicks on the cart link
    Then The shopping cart pop up should appear

 @test
 Scenario:
   Given User is on Incididunt picanha product page
   And User clicks on red colour
   And User has added one item to cart
   And User clicks on the cart link
   And The shopping cart pop up should appear
   When User clicks on view the cart link
   Then User should be directed to Shopping Cart page
   And User should be able to view the item in the Shopping Cart

  @test
   Scenario:
     Given User is on Incididunt picanha product page
     And User clicks on red colour
     And User has added one item to cart
     And User clicks on the cart link
     And The shopping cart pop up should appear
     And User clicks on view the cart link
     And User should be directed to Shopping Cart page
     And User should be able to view the item in the Shopping Cart
     When User clicks on the Remove button
     Then the item should be removed from the Shopping Cart







