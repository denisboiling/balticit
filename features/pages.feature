Feature: Pages

  Scenario: Visit each of base page
    When I am on the root page
    Then I should can visit each of base pages

@javascript
  Scenario Outline: Send feedback mail from contacts page
    Given there is a admin user with the email "admin@example.com"
    When I am on the page with slug "contacts"
    Then I fill in "feedback-email" with "<email>"
    And I fill in "feedback-message" with "<message>"
    When I press "Отправить"
    Then I should see "<result>"
    Then "admin@example.com" should receive <got> email with subject "You have new feedback message"
  Examples:
    | email               | message               | result                            | got |
    | email@example.com   | Хочу у вас работать!  | Ваше сообщение успешно отправлено | an  |
    | AMAZING+E.M.L@ml.ru | Хочу у вас работать!  | Ваше сообщение успешно отправлено | an  |
    | bad'mail'bad@ml.com | Хочу у вас работать!  | Введите правильный e-mail         | no  |
    | without.dog.mail.ru | Хочу у вас работать!  | Введите правильный e-mail         | no  |
    | a@b@c@example.com   | Хочу у вас работать!  | Введите правильный e-mail         | no  |
    | email@example.com   | Bad mes               | Ваше сообщение cлишком короткое   | no  |
