require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1', :text => 'Sample App')
    end
	it "should have the right title" do
	  visit '/static_pages/home'
	  page.should have_selector('title',
	                    :text => "Ruby on Rails Tutorial Sample App | Home")
	end    
  end

  describe "Help Page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end
  	it "should have the right title" do
	  visit '/static_pages/help'
	  page.should have_selector('title',
		                  :text => " | Help")# substrings are OK.  This will pass without specifying the whole title
	end
  end

  describe "About Page" do
  	it "should have the content 'about'" do
  	  visit '/static_pages/about'
  	  page.should have_selector('h1', :text => 'About')
  	end
	it "should have the right title" do
	  visit '/static_pages/about'
	  page.should have_selector('title',
	                    :text => "Ruby on Rails Tutorial Sample App | About")
	end
  end
end
