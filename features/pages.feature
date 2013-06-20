Feature: Pages

  Scenario: Open page from root page
    Given there is a page with the name "News" and the content "Hedgehogs always sober"
    When I am on the root page
    Then I should see "Главная"
    And I follow "News"
    Then I should see "Hedgehogs always sober"
