require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
  	it "should have the content 'Sample app'"  do
  		visit '/static_pages/home'
  		page.should have_selector('h1', text: "Sample App")
    end
    it "should have the right title"  do
    	visit '/static_pages/home'
    	page.should have_selector('title', text:"Home")
    end
  end

  describe "Help page" do 
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1',text: 'Help')
  	end
  	it "should have the title 'Help" do
  		visit '/static_pages/help'
  		page.should have_selector('title', text: "Help")
  	end
  end

  describe "Contact Page" do 
  	it "should have the content 'About Us'"  do
  		visit '/static_pages/about'
  		page.should have_selector('h1', text: 'About Us')
  	end
  	it "should have the title 'About Us' "do
  		visit '/static_pages/about'
  		page.should have_selector('title', text: "About Us")
  	end
  end

end