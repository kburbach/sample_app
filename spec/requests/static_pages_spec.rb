require 'spec_helper'

describe "StaticPages" do
 
  # testing for the correct titles
  describe "Home page title" do
  	it "should have the content 'Sample App'" do
     	visit '/static_pages/home'
      	page.should have_selector('h1', 
      		:text => 'Sample App')
    end

  	it "should have the right title" do
  		visit '/static_pages/home'
  		page.should have_selector('title',
  			:text => 'Ruby on Rails Tutorial Sample App | Home')
  	end
  end

  describe "Help page title" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', 
      		:text => 'Help')
  	end

  	it "should have the right title" do	
  		visit '/static_pages/help'
  		page.should have_selector('title', 
  			:text => " | Help")
  	end
  end

  describe "About page title" do
  		it "should have the content 'About'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', 
      		:text => 'About')
  	end

  	it "should have the right title" do
  		visit '/static_pages/about'
  		page.should have_selector('title', 
  			:text => " | About")
  	end
  end


end
