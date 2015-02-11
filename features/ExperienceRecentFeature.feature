

Feature: Verifying recent feature module which displays four recent assets in Experience home page .
Background:
When I visit the Experience home page 

@ExpRecentFeature
Scenario:Verifying recent feature module
Given I am on the recent feature module
Then I should see four recent assets dispalyed 
When I click the asset 1 under recent feature module
Then The corresponding page displays	
When I click the asset 3 under recent feature module
Then The corresponding page displays	