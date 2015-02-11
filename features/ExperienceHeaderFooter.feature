Feature: Experience Header/Footer
Verifying logo,beachfronts,beachdestinations,search,socialshare icon in header.
Verifying beachfronts,beachdestinations,experiencesites & staticpages in footer.
  
Background:
When I visit the Experience home page 

@ExpHeaderFooter@ExpHeaderlogo
Scenario:Verifying ExperienceLogo 
	Given I am on the ExperienceHome page
	When I click on 'UsaTodayTravel' logo
	Then I should be on 'USATodayTravel' page 
	And I click on 'Experience' logo
	Then I am on the ExperienceHome page
	
@ExpHeader@ExpFrontNavigation
Scenario Outline: Verifying beach fronts navigation.
	When I click on beach <"front_tab"> in the header nav bar 
	Then I should see <"front_heading"> 
		And The corresponding page should displays

	Examples:	
		|front_tab |front_heading|
		|Find My Beach Experience|FIND YOUR BEACH EXPERIENCE|
		|Best Beaches |BEST BEACHES |
		|Beach Photos |PHOTO GALLERIES |
		|FREE BEACH TRIP QUOTES |HOW TRIPOLOGY WORKS |

@ExpFooter@ExpFrontNavigation
Scenario Outline: Verifying beach fronts navigation.
	When I click on beach <"front_tab"> in the footer nav bar 
	Then I should see <"front_heading"> 
		And The corresponding page should displays

	Examples:	
		|front_tab |front_heading|
		|Find My Beach Experience|FIND YOUR BEACH EXPERIENCE|
		|Best Beaches |BEST BEACHES |
		|Beach Photos |PHOTO GALLERIES |
		|FREE BEACH TRIP QUOTES |HOW TRIPOLOGY WORKS |


@ExpHeader@ExpDestinationNavigation
Scenario Outline: Verifying beach destinations navigation.
	When I select <"destination"> under top destination tab
	Then I should see <"destination"> heading
		And The corresponding page should displays

	Examples:
		|destination|
		|California |
		|Florida    |
		|Delaware   |
		|Mexico     |

@ExpFooter@ExpDestinationNavigation
Scenario Outline: Verifying beach destinations navigation.
	When I select <"destination"> in the footer nav bar
	Then I should see <"destination"> heading
		And The corresponding page should displays

	Examples:
		|destination|
		|California |
		|Florida    |
		|Delaware   |
		|Mexico     |


@ExpHeaderfooter@ExpSocialShareTrain  
Scenario Outline: Verifying experince social icon.
	When I click on any <social_icon> in header
	Then I should see <"social_site"> heading
		And The corresponding page should displays

	Examples:	
		|social_icon      |social_site|                      
		|.icon.icon-facebook|USA TODAY Travel|
		|.icon.icon-twitter|USA TODAY Travel|
		|.icon.icon-pinterest|USA TODAY Travel|
		

@ExpHeaderfooter@ExpSearch 
Scenario:Verifying search page 
	When I click Search icon in header
	Then Search page should display

@ExpHeaderfooter@ExpSiteNavigation 
Scenario Outline: Verifying experince sites navigation.
	When I click on other experience <site> in footer
	Then I should see <"experience_site">heading 
		And The corresponding page should displays
	Examples:	
		|site                    |experience_site|                      
		|Experience America|Find your AMERICA Experience|
		|Experience Caribbean|Find your CARIBBEAN Experience|
		|Experience Cruise   |Find your EXPERIENCE CRUISE| 
		|Experience Food and Wine|Find your FOOD AND WINE Experience|
		|Experience Las Vegas|Find your LAS VEGAS Experience|
		|Experience South|Find your SOUTH Experience|
		|Experience Ski|Find your SKI Experience|

@ExpHeaderfooter@ExpStaticPageNavigation 
Scenario Outline: Verifying static page navigation.
	When I click on any static <page>
		Then The static <page_description> should display

	Examples:
	    |page |page_description|
	    |About Us|About Us|		
	    |Contact Us|General Inquiries|

@ExpHeaderfooter@ExpStaticPageNavigation1
Scenario Outline: Verifying static1 page navigation.
	When I click static1 <page>
		Then The static1 <page_description> should display

	Examples:   
	    |page |page_description| 
	    |Terms Of Service|USATODAY.com Terms of Service|
	    |PRIVACY NOTICE / YOUR CALIFORNIA PRIVACY RIGHTS|USATODAY.com Privacy Notice|
	    |Ad Choices| Data Collected in Connection with Ad Serving and Targeting|
		

















