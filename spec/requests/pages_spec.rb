require 'spec_helper'

describe "Pages" do

  shared_examples_for "all static pages" do
    
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  
  end

  describe "Home page" do

    before { visit root_path }
    
    subject { page }
    
    let(:heading) {'Home'}
    let(:page_title) { 'Home' }

    it_should_behave_like "all static pages"
  end

  describe "Privacy page" do

    before { visit privacy_path }
    
    subject { page }
    
    let(:heading) {'Privacy'}
    let(:page_title) { 'Privacy' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do

    before { visit about_path }
    
    subject { page }
    
    let(:heading) {'About Us'}
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do

    before { visit contact_path }
    
    subject { page }
    
    let(:heading) {'Contact Us'}
    let(:page_title) { 'Contact Us' }

    it_should_behave_like "all static pages"
  end
  it "should have the right links on the layout" do
    visit root_path
    
    click_link "Home"
    page.should have_selector 'title', text: full_title('Home')
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign Up')
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact Us')
    click_link "Privacy"
    page.should have_selector 'title', text: full_title('Privacy')
  end
end