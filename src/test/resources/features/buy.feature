Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Butter" with price 45.00 and stock of 20 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00
    And product "Bread" stock should be 3

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 121.00
    And product "Bread" stock should be 3
    And product "Jam" stock should be 9

Scenario: Buy new product
    When I buy "Butter" with quantity 2
    Then total should be 90.00
    And product "Butter" stock should be 18