require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
	
	it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end
	
  end
  
  describe "Help page" do
		it "shuld have the content 'help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end
		
		it "shuld have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
		end
  end
  
  describe "About us page" do
		it "shuld have the content 'About us'" do
			visit '/static_pages/about'
			page.should have_content('About Us')
		end
		
		it "shuld have the title 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
		end
  end
  
	
  
end