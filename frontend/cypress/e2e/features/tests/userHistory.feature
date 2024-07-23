Feature: user history
    As an user
    I want to have my posts and reviews listed somewhere
    So that others and I can see what I did

Scenario: Access content through reviews tab
    Given the user is on the page "profile/edsonneto8"
    And there is a review for the movie with id "2809ee44-1149-42bb-ad9d-e1abce2eee2e"
    And the user is on the "reviews_tab" tab
    When the user clicks the card of the movie with id "2809ee44-1149-42bb-ad9d-e1abce2eee2e"
    Then the user goes to the page "contents/movies/Interestelar"

Scenario: Access edit content through reviews tab
    Given the user is on the page "profile/edsonneto8"
    And there is a review for the movie with id "2809ee44-1149-42bb-ad9d-e1abce2eee2e"
    And the user is on the "reviews_tab" tab
    When the user clicks the "update-review-button-movies-2809ee44-1149-42bb-ad9d-e1abce2eee2e" button
    Then the user goes to the page "profile/edsonneto8/movies/Interestelar/update_review"

Scenario: Delete review through reviews tab
    Given the user is on the page "profile/edsonneto8"
    And there is a review for the movie with id "2809ee44-1149-42bb-ad9d-e1abce2eee2e"
    And the user is on the "reviews_tab" tab
    When the user clicks the "delete-review-button-movies-2809ee44-1149-42bb-ad9d-e1abce2eee2e" button
    Then there is no longer a review for the movie with id "2809ee44-1149-42bb-ad9d-e1abce2eee2e"
