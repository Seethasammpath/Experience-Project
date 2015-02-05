Feature: Verifying Experience home image-carousel.
Background:
When I visit the Experience home page 

@EXPImgCarousel@EXPImgCarouselDetails
Scenario: Verify Asset title,Asset image and credit displayed in image carousel
Given I am in carousel module
Then I should see the carousel "caption"
And I should see the carousel "credit"


@EXPImgCarousel@EXPImgCarouselArrowNav
Scenario: Verify that I am able to navigate left/right through the images
Given I am in carousel module
When I click on the "right" carousel arrow
Then I am taken to the "next" image
When I click on the "left" carousel arrow
Then I am taken to the "previous" image

@EXPImgCarousel@EXPImgCarouselAssetNav
Scenario: Verify that I am taken to the right page when clicking on image
Given I am in carousel module
When I click on the readmore link
Then I am taken to the story page




