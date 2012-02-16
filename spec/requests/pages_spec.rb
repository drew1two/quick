require 'spec_helper'

describe "Pages" do

  let(:base_title) { "Quick-Score.com" }

  describe "Home page" do

    before { visit root_path }
    
    subject { page }

    it { should have_selector('h1', text: 'Home') }
    it { should have_selector('title', text: full_title('Home')) }
  end

  describe "Privacy page" do

    before { visit privacy_path }
    
    subject { page }

    it { should have_selector('h1', text: 'Privacy') }
    it { should have_selector('title', text: full_title('Privacy')) }
  end

  describe "About page" do

    before { visit about_path }
    
    subject { page }

    it { should have_selector('h1', text: 'About Us') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do

    before { visit contact_path }
    
    subject { page }

    it { should have_selector('h1', text: 'Contact Us') }
    it { should have_selector('title', text: full_title('Contact Us')) }
  end
end