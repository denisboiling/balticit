Feature: Pages

  Background:
    Given all base pages

  Scenario: Visit each of base page
    When I am on the root page
    Then I should can visit each of base pages
