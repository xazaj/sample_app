require 'spec_helper'

describe "StaticPages" do
  
  describe "Home Page" do
    it "should have the base title" do
      visit root_path
      page.should have_selector('title',text:"Ruby on Rails Sample App")
    end

    it "should have the content 'sample app'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_content('sample app')
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us' " do
      visit about_path
      page.should have_content('About Us')
    end
  end
  
  describe "Contact page" do
    it "should have the contact 'Contact' " do
      visit '/static_pages/contact'
      page.should have_selector('h1', text:'Contact')
    end

    it "should have title 'Contact'" do
      visit contact_path
      page.should have_selector('title',text:"Ruby on Rails Sample App | Contact")
    end
  end
end
