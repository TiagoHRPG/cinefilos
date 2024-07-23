Feature: Registration and Maintenance of users
  As a regular user
  I want to create, delete and edit my account
  So that I can manage my account

@skip-backup
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

@skip-backup
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

@skip-backup
Scenario: Email Unavailable
    Given the user visits the page "/register"
    And the user does not visualize content registered with username "Edttn" and phone number "333444555"
    When the user fills the data "full_name" with "Ed Einstein"
    And the user fills the data "username" with "Edttn"
    And the user fills the data "email" with "einstein@mail.com"
    And the user fills the data "password" with "Bsf4331bb"
    And the user fills the data "phone_number" with "333444555"
    And the user fills the data "gender" with "masculine"
    And the user fills with "birth_date" with "1980-01-01"
    And the user fills the data "address" with "Rua dos belos, nº 2"
    When the user press "Cadastrar"
    Then the user visualizes the text "Dados de cadastro já existem."

@skip-backup
Scenario: Username Unavailable
    Given the user visits the page "/register"
    And the user does not visualize content registered with username "Einstein" and phone number "22114411"
    When the user fills the data "full_name" with "Isabel Ferreira"
    And the user fills the data "username" with "Einstein"
    And the user fills the data "email" with "bell28@mail.com"
    And the user fills the data "password" with "55Ahhhhhh"
    And the user fills the data "phone_number" with "22114411"
    And the user fills the data "gender" with "Feminino"
    And the user fills with "birth_date" with "1980-01-01"
    And the user fills the data "address" with "Rua dos belos, nº 4"
    When the user press "Cadastrar"
    Then the user visualizes the text "Dados de cadastro já existem."



