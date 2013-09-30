require 'spec_helper'

  describe "Home Page" do
    it "should have the h1 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1', :text => 'Sample App')
    end

	it "should have the base title" do
	  visit '/static_pages/home'
	  page.should have_selector('title',
	                    :text => "Ruby on Rails Tutorial Sample App")
	end 

	it "should not have a custom page title" do
		visit '/static_pages/home'
		page.should_not have_selector('title', :text => '| Home')   
	  end

  describe "Help Page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end
  end

  describe "About Page" do
  	it "should have the content 'about'" do
  	  visit '/static_pages/about'
  	  page.should have_selector('h1', :text => 'About')
  	end
	it "should have the base title" do
	  visit '/static_pages/about'
	  page.should have_selector('title',
	                    :text => "Ruby on Rails Tutorial Sample App")
	end 
  end

	describe "Contact Page" do
	  	it "should have the content 'contact'" do
	  	  visit '/static_pages/contact'
	  	  page.should have_selector('h1', :text => 'Contact')
	  	end
		it "should have the base title" do
		  visit '/static_pages/contact'
		  page.should have_selector('title',
		                    :text => "Ruby on Rails Tutorial Sample App")
		end 
	  end

end
