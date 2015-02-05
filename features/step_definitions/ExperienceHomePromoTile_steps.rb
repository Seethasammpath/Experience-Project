

Given(/^I am in promotile module$/) do
	expect(page).to have_css(".modern-footer-blocks")
end
When(/^I click the FindMyExperience title$/) do
	@expected_FE =find("#nav-find-my-experience").find("a")["href"] 
	find("#nav-find-my-experience").find("a").click
end

When(/^I click the promotile (\d+)$/) do | thumbnailPosition |
	@section = all('.modern-footer-block')
	$link = @section[thumbnailPosition.to_i].find("a")["href"] 
    page.driver.browser.manage.window.maximize
	@section[thumbnailPosition.to_i].find("a").click
end

Then(/^The corresponding page displays$/) do
	expect(current_url).to match $link
	page.evaluate_script('window.history.back()')
end

