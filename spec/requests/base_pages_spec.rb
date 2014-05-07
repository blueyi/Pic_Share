require 'spec_helper'

describe "base pages" do
  let(:base_title)   { "Picture Share" } 

  describe "Home page" do
	it "should have the content 'Picture Share'" do
	  visit '/base_pages/home'
	  expect(page).to have_content("#{base_title}")
	end

	it "should have the title 'Home'" do
	  visit '/base_pages/home'
	  expect(page).to have_title("#{base_title} | Home")
	end
  end

  describe "Help" do
	it "should have the content 'Help'" do
	  visit '/base_pages/help'
	  expect(page).to have_content('Help')
	end

	it "should have the title 'Help'" do
	  visit '/base_pages/help'
	  expect(page).to have_title("#{base_title} | Help")
	end

  end

  describe "About" do
	it "should have the content 'About Us'" do
	  visit '/base_pages/about'
	  expect(page).to have_content('About Us')
	end

	it "should have the title 'About Us'" do
	  visit '/base_pages/about'
	  expect(page).to have_title("#{base_title} | About Us")
	end

  end

end
