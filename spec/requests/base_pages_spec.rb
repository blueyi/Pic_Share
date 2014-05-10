require 'spec_helper'

describe "base pages" do

  subject { page }
  let(:base_title)   { "Picture Share" } 

  shared_examples_for "All base pages" do
	it { should have_content(heading) }
	it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
	before { visit root_path}
	
	let(:heading) { 'Picture Share' } 
	let(:page_title) { '' } 

	it_should_behave_like "All base pages"
	it { should_not have_title('| Home') }
  end

  describe "Help" do
	before {visit help_path}

	let(:heading) { 'Help' }
	let(:page_title) { 'Help' }
  end

  describe "About" do
	before { visit about_path }

	let(:heading) { 'About Us' }
	let(:page_title) { 'About Us' }
  end

  describe "Contact page" do
	before { visit contact_path }

	let(:page_title) { 'Contact' }
	let(:heading) { 'Contact' }
  end
  describe "Feedback" do
	before { visit feedback_path }

	let(:page_title) { 'Feedback' }
	let(:heading) { 'Feedback' }
  end

  it "should have the right links on the layout" do


	visit root_path
	click_link "About"
	expect(page).to have_title(full_title('About Us'))	
	click_link "Help"
	expect(page).to have_title(full_title('Help'))	
	click_link "Contact"
	expect(page).to have_title(full_title('Contact'))	
	click_link "Feedback"
	expect(page).to have_title(full_title('Feedback'))	
	click_link "Home"
	click_link "Picture Share"
	expect(page).to have_title(full_title(''))	
	click_link "Sign up now!"
	expect(page).to have_title(full_title('Sign up'))	
  end

end
