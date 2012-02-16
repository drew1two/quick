require 'spec_helper'

describe "UserPages" do
  describe "Signup Page" do

    before { visit signup_path }

    subject { page }

    it { should have_selector('h1', text: 'Sign Up') }
    it { should have_selector('title', text: full_title('Sign Up')) }
  end
end
