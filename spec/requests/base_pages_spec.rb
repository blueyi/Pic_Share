require 'spec_helper'

describe "base pages" do

  describe "Home page" do
	it "should have the content 'Picture Share'" do
	  visit '/base_pages/home'
	  expect(page).to have_content('Picture Share')
	end
  end

  describe "Help" do
	it "should have the content 'Help'" do
	  visit '/base_pages/help'
	  expect(page).to have_content('Help')
	end
  end

  describe "About" do
	it "should have the content 'About Us'" do
	  visit '/base_pages/about'
	  expect(page).to have_content('About Us')
	end
  end

end
