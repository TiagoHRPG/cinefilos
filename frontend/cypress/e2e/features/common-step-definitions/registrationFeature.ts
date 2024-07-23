import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given("the user joins the page {string}", (page: string) => {
    cy.visit(page);
    cy.url().should('include', page);
    cy.get(`[data-cy="full_name"]`).should('be.visible');
});

When("the user does not visualize content registered with username {string} and phone number {string}", (username: string, phoneNumber: string) => {
    cy.get(`[data-cy="user-username-${username}"]`).should("not.exist");
    cy.get(`[data-cy="user-phoneNumber-${phoneNumber}"]`).should("not.exist");
});

When("the user fills with {string} with {string}", (field: string, value: string) => {
    cy.get(`[data-cy="${field}"]`).clear().type(value);
});

When("the user press {string}", (button: string) => {
    cy.get(`[data-cy="submit-button"]`).should('be.visible').should('not.be.disabled').click({ force: true });
});


Then("the user sees the text {string}", (text: string) => {
    cy.contains(text).should('be.visible');
});
