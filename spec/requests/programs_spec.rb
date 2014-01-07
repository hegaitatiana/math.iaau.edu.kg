require 'spec_helper'

describe "Programs" do
  describe "GET /programs" do
    it "should have the content 'Program'" do
      visit '/faculties'
      expect(page).to have_content('Program')
    end
    it "should have the title 'Programs'" do
      visit '/faculties'
      expect(page).to have_title('Programs')
    end
    it "should not have the title 'Home'" do
      visit '/faculties'
      expect(page).not_to have_title('Home')
    end
  end
end
