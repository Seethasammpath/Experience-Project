Feature: Verifying Experience homefronttile.
Background:
When I visit the Experience home page 

@EXPHomePromoTile1
Scenario: Verify the promotile
	Given I am in promotile module
	When I click the FindMyExperience title
		Then 'FindMyExperience' front should dispaly
	When I click the promotile 3
		Then The corresponding page displays
	When I click the promotile 5
		Then The corresponding page displays
	When I click the promotile 8
		Then The corresponding page displays			
		
	
