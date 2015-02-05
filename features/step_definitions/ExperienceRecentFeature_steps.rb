
Given(/^I am on the recent feature module$/) do
	page.driver.browser.manage.window.maximize
	#require 'debug'
  	expect(page).to have_css(".list-unstyled")
end

Then(/^I should see four recent assets dispalyed$/) do
	page.has_css?("ul.list-unstyled li", :count => 4)
end

When(/^I click the asset (\d+)$/) do |position|
  @asset = all("ul.list-unstyled li")
	$link = @asset[position.to_i].find("a")["href"] 
    page.driver.browser.manage.window.maximize
	@asset[position.to_i].find("a").click
end


