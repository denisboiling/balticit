Feature: Pages

  Scenario: Open page from root page
    Given all standart pages
    When I am on the root page
    Then I should see "Главная"
    And I follow "Контакты"
    Then I should see "+7 4012 909 040"
