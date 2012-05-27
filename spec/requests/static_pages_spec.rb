require 'spec_helper'

describe "Statis Pages" do
	describe "Home Page" do 
		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Home')
		end
		it "should have the correct Home Page title" do
			visit '/static_pages/home'
			page.should have_selector('title',
								:title => "Ruby on Rails Tutorial Sample App | Home")
		end
	end

	describe "Help Page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end
		it "should have the correct Help Page title" do
			visit '/static_pages/help'
			page.should have_selector('title',
								:title => "Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe "About Page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
		end
		it "should have the correct About Page title" do
			visit '/static_pages/home'
			page.should have_selector('title',
								:title => "Ruby on Rails Tutorial Sample App | About Us")
		end
	end
end
