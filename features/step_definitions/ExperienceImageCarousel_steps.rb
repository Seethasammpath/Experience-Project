
Given(/^I am in carousel module$/) do
  expect(page).to have_selector(:id,'home-carousel')
end
#@EXPImgCarouselDetails
Then(/^I should see the carousel "(.*?)"$/) do |component_name| #Verifying carousel title and credit
	   component_name = component_name.downcase
    if component_name == "caption"
	    expect(find(".carousel-caption")).to have_text
	elsif component_name == "credit"
	    expect(find(".nested-credit")).to have_text     
	end
end  
#@EXPImgCarouselArrowNav
When(/^I click on the "(.*?)" carousel arrow$/) do |arrow| #Verifying carousel right and left arrow
	within (".carousel.slide") do
	   @curr_slide = find(".item.active").text
	if arrow == 'right'
	   find('.carousel-control.left').click
	elsif arrow == 'left'
	  find('.carousel-control.right').click
	end
    end	
end


Then(/^I am taken to the "(.*?)" image$/) do |direction|
	within (".carousel.slide") do
	@changed_slide = find(".item.active").text
	end
	expect(@curr_slide).not_to be_equal(@changed_slide)
end
#@EXPImgCarouselAssetNav
When(/^I click on the readmore link$/) do  #Verifying asset navigation by clicking on 'Read more' link
	@expected_IM = find(".item.active").first("a")["href"] 
	find(".icon-circle-arrow-right").click
end

Then(/^I am taken to the story page$/) do
    expect(current_url).to match @expected_IM
    page.evaluate_script('window.history.back()')
end