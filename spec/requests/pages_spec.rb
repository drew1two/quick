require 'spec_helper'

describe "Pages" do
  describe "Home Page" do
    it "should have the content 'Home'" do
      visit '/pages/home'
      page.should have_content('Home')
    end
  end
  describe "About Page" do
    it "should have the content 'About Us'" do
      visit '/pages/about'
      page.should have_content('About Us')
    end
  end
  describe "Contact Page" do
    it "should have the content 'Contact Us'" do
      visit '/pages/contact'
      page.should have_content('Contact Us')
    end
  end
  describe "Privacy Page" do
    it "should have the content 'Privacy'" do
      visit '/pages/privacy'
      page.should have_content('Privacy')
    end
  end
end
