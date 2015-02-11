

Given(/^I am on the ExperienceHome page$/) do
  expect(page).to have_selector(:id,'main-carousel')
end

#---Verifying Experience logo-----------------

When(/^I click on 'UsaTodayTravel' logo$/) do #Clicking Experience Travel logo
     click_link('USA TODAY TRAVEL')
end

Then(/^I should be on 'USATodayTravel' page$/) do #Verifying Experience Travel page
  expect(page).to have_selector(:id,'section_travel')
  page.evaluate_script('window.history.back()')
end

And(/^I click on 'Experience' logo$/) do #Clicking Experience Beach logo
  find(".experience-logo").click
end 

Then(/^I am on the Experience home page$/) do#Verifying Experience Home page 
  expect(page).to have_selector(:id,'main-carousel') 
end

#----Verifying Beach front navigation in Header---

When(/^I click on beach (.*?)$/) do |front|  #Clicking beach front
  within(".footer-site-nav")do
  find_link(front).click
  end 
  within("#experience-header")do
  find_link(front).click
  end
end

Then(/^beach (.*?) should display$/) do |front_description| #Verifying beach front text
  expect(page).to have_content(front_description)
end

When(/^I click on beach1 (.*?)$/) do |front| #Clicking beach front which opens in new window
  find(".footer-site-nav").find_link(front).click
end

Then(/^beach1 (.*?) should display$/) do |front_description| #Verifying beach front text in new window
    first_window= page.driver.browser.window_handles.first
    new_window = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window new_window
    expect(page).to have_content(front_description)
    page.driver.browser.close
    page.driver.browser.switch_to.window first_window
end

#-------Verifying destinations navigation in footer------

When(/^I click on top (.*?)$/) do |destination_href| #Clicking different destination 
  find(".cities").find_link(destination_href).click
end

Then(/^destination (.*?) should display$/) do |description| # Verifying text in the destination page
  expect(page).to have_content(description)
end

#--------Verifying ExpSearch---------> 

When(/^I click Search icon$/) do
  @expected_SE =first(".nav-search").find("a")["href"] 
  first(".social-nav").find(".nav-search").find("a").click
end
 
Then(/^Search page should display$/) do
  expect(current_url).to match @expected_SE
  page.evaluate_script('window.history.back()')
end

#---------Verifying ExpSocialShare------>

When(/^I click on any (.*?)$/) do |social_class| #Clicking different destination 
  first(".social-nav").find(social_class).click
end

Then(/^The (.*?) should display$/) do |social_site| # Verifying text in the destination page
  expect(page).to have_content(social_site)
end

#----------Verifying Experience site navigation in footer---

When(/^I click on other experience(.*?)$/) do |site|   #Clicking experience site 
  find(".experience-sites").find_link(site).click
end

Then(/^The correspoding experience (.*?) should display$/) do |site_description| #Verifying Experience site text
    first_window= page.driver.browser.window_handles.first
    new_window = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window new_window
    expect(page).to have_content(site_description)
    page.driver.browser.close
    page.driver.browser.switch_to.window first_window
  end

#------------Verifying static page navigation in footer---

When(/^I click static (.*?)$/) do |page|  #Clicking static page 
  find(".copyrights").find_link(page).click
end

Then(/^The static (.*?) should display$/) do |page_description| #Clicking static page text
  expect(page).to have_content(page_description)
   
end

When(/^I click static1 (.*?)$/) do |page| #Clicking static page which opens in new window
  find(".copyrights").find_link(page).click
end

Then(/^The static1 (.*?) should display$/) do |page_description| #Verifying static page text in new window
  first_window= page.driver.browser.window_handles.first
  new_window = page.driver.browser.window_handles.last
  page.driver.browser.switch_to.window new_window
  expect(page).to have_content(page_description)
  page.driver.browser.close
  page.driver.browser.switch_to.window first_window
end






