Given /^I am on the homepage$/ do
  visit '/'
end

When /^I follow "(.*?)"$/ do |arg1|
  click_link(arg1)
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When /^I press "(.*?)"$/ do |arg1|
  click_button(arg1) 
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content(arg1)
end

Then /^I should not see "(.*?)"$/ do |arg1|
  page.should_not have_content(arg1)
end

Then /^I should be on the project page for "(.*?)"$/ do |name|
  current_path.should == project_path(Project.find_by_name!(name))
  page.should have_content("#{name} - Projects - Ticketee")
end

Given /^there is a project called "(.*?)"$/ do |name|
  @project = Factory(:project, :name => name)
end

When /^I check "(.*?)"$/ do |arg1|
  check arg1
end