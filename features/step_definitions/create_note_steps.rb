Given(/^I am on the login, welcome page$/) do
  visit root_path
  click_link "Sign In"
end

When(/^I provide email address "(.*?)"$/) do |email|
  fill_in "Email", with: "test@admin.com"
end

When(/^I provide the password "(.*?)"$/) do |password|
  fill_in "Password", :with => "kakashka"
end

Then(/^I logged in successfully$/) do
  click_button "Sign in"
end

Then(/^I see "(.*?)" message$/) do |message|
  visit user_path
  expect(flash[:notice]).to eq("You are logged in successfully")
end

