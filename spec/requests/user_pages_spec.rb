require 'spec_helper'

describe "UserPages" do

  before { visit signup_path }

  describe "Signup Page" do
    
    subject { page }
    
    let(:heading) {'Sign Up'}
    let(:page_title) { 'Sign Up' }

    it_should_behave_like "all static pages"
  end
end
