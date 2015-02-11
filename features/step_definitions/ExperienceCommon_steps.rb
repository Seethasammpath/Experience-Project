

When (/^I visit the Experience home page$/) do
	visit ("http://experience.usatoday.com/beach/") #got to beach site 
	page.driver.browser.manage.window.maximize

end

Then(/^The corresponding page displays$/) do
	expect(current_url).to match $link
	page.evaluate_script('window.history.back()')
end