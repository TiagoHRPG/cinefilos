Feature: Registration and Maintenance of users
  As a regular user
  I want to create, delete and edit my account
  So that I can manage my account

Scenario: Successful User Registration
    Given the user joins the page "/register"
    And the user does not visualize content registered with username "Einstein" and phone number "123456777"
    When the user fills with "full_name" with "Albert Einstein"
    And the user fills with "username" with "Einstein"
    And the user fills with "email" with "einstein@mail.com"
    And the user fills with "password" with "Vxkhc986"
    And the user fills with "birth_date" with "1980-01-01"
    And the user fills with "phone_number" with "123456777"
    And the user fills with "gender" with "masculine"
    And the user fills with "address" with "Rua dos belos, nº 0"
    When the user press "Cadastrar"
    Then the user sees the text "Usuário adicionado com sucesso"

Scenario: User Registration Without Email
    Given the user joins the page "/register"
    And the user does not visualize content registered with username "Einstein" and phone number "123456777"
    When the user fills the data "full_name" with "Albert Einstein"
    And the user fills the data "username" with "Einstein"
    And the user leaves the data "email" empty
    And the user fills the data "password" with "Vxkhc986"
    And the user fills the data "phone_number" with "123456777"
    And the user fills the data "gender" with "masculine"
    And the user fills the data "address" with "Rua dos belos, nº 0"
    When the user press "Cadastrar"
    Then the user visualizes the text "Preencha os campos obrigatórios."

