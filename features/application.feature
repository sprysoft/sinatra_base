Feature: View root page
  In order for our app to function correctly
  As a user
  I want to load the home page

  Scenario: View home page
    Given I am viewing the home page 
    Then I should see "Sinatra, Mongoid prototyping application"