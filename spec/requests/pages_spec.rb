require 'spec_helper'

describe "Pages" do

  let(:base_title) { "Quick-Score.com" }

  describe "Home page" do

    it "should have the h1 'Home'" do
      visit '/pages/home'
      page.should have_selector('h1', :text => 'Home')
    end

    it "should have the title 'Home'" do
      visit '/pages/home'
      page.should have_selector('title', :text => "Home @ #{base_title}")
    end
  end

  describe "Privacy page" do

    it "should have the h1 'Privacy'" do
      visit '/pages/privacy'
      page.should have_selector('h1', :text => 'Privacy')
    end

    it "should have the title 'Privacy'" do
      visit '/pages/privacy'
      page.should have_selector('title', :text => "Privacy @ #{base_title}")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/pages/about'
      page.should have_selector('title', :text => "About Us @ #{base_title}")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact Us'" do
      visit '/pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact Us'" do
      visit '/pages/contact'
      page.should have_selector('title', :text => "Contact Us @ #{base_title}")
    end
  end
end