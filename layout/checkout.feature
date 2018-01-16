Feature: To check functionality of checkout page

  @test
  Scenario:
    Given User is on homepage
    And User clicks on Incididunt picanha link
    And User is on Incididunt picanha product page
    And User clicks on red colour
    And User has added one item to cart
    And User clicks on the cart link
    And The shopping cart pop up should appear
    When User clicks on the Checkout link
    Then User is directed to the So Onepage Checkout page