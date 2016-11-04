require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'App20161103'" do
      visit '/static_pages/home'
      expect(page).to have_content('App20161103')
    end

    it "should have the base title'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial App20161103")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end

  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial App20161103 | Help")
    end

  end

  describe "About page" do

    it "should have the content 'О приложении'" do
      visit '/static_pages/about'
      expect(page).to have_content('О приложении')
    end


    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial App20161103 | About")
    end

  end

end