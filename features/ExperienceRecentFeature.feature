

Feature: Verifying Experience home header.
Background:
When I visit the Experience home page 

@ExpRecentFeature
Scenario:Verifying recent feature items
Given I am on the recent feature module
Then I should see four recent assets dispalyed 
When I click the asset 1
Then The corresponding page displays	
When I click the asset 3
Then The corresponding page displays	