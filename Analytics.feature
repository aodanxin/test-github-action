@ProductArea.BRAND_ANALYTICS
Feature: Analytics
  As a maker,
  I want to view stats of my shop
  So I can have insight into how my shop is performing and steps to improve.

  Background:
    Given a brand exists
    And the brand has passed the milestone WALKTHROUGH_MODAL_SEEN
    And the brand has passed the milestone BRAND_HAS_SEEN_VIDEO_UPLOAD_TOOLTIP
    And the brand has passed the milestone UPFRONT_PAYMENTS_ENROLLMENT_MODAL_DISMISSED
    And I am logged in as the brand

  Scenario: Navigation
    Given I am in the brand portal
    Then I can navigate to the Analytics page

    Given I am on the Analytics page
    Then I can navigate to the Sell-through & Returns page

    Given I am on the Analytics page
    Then I can navigate to the Reviews page

  Scenario: Filter data by a preset time interval
    Given I am on the Analytics page
    When I select a preset time interval
    Then I should only see data of the selected preset time interval

  Scenario: Filter data by a custom time interval
    Given I am on the Analytics page
    When I select a custom time interval
    Then I should only see data of the selected custom time interval
