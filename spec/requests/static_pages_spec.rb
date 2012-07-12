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
    #it "should not have a custom page title" do
     # visit '/static_pages/home'
      #page.should_not have_selector('title',text: '| Home')
    #end
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

  describe "About Us" do 
  	it "should have the content 'About Us'"  do
  		visit '/static_pages/about'
  		page.should have_selector('h1', text: 'About Us')
  	end
  	it "should have the title 'About Us' "do
  		visit '/static_pages/about'
  		page.should have_selector('title', text: "About Us")
  	end
  end

  describe "Contact Us" do
  	it "should have the title 'Contact Us'" do
  		visit '/static_pages/contact'
  		page.should have_selector('title', text: 'Contact Us')
  	end
  	it "should have the h1 selector filled with 'Contact Us'" do
  		visit '/static_pages/contact'
  		page.should have_selector('h1', text: "Contact Us")
  	end
  end

end
