

Given(/^I am in promotile module$/) do #Verifying promo tile module
	expect(page).to have_css(".modern-footer-blocks")
end

When(/^I click the FindMyExperience title$/) do #clicking find my experience tile
	$link =find("#nav-find-my-experience").find("a")["href"] 
	find("#nav-find-my-experience").find("a").click
end

When(/^I click the promotile (\d+)$/) do | thumbnailPosition | #verifying tiles in position 3,5,8
	@section = all('.modern-footer-block')
	$link = @section[thumbnailPosition.to_i-1].find("a")["href"] 
    page.driver.browser.manage.window.maximize
	@section[thumbnailPosition.to_i-1].find("a").click
end



