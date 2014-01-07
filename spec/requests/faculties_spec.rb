require 'spec_helper'

describe "Faculties" do
  describe "GET /faculties" do
    it "should have the content 'Faculty'" do
      visit '/faculties'
      expect(page).to have_content('Faculty')
    end
    it "should have the title 'Faculty'" do
      visit '/faculties'
      expect(page).to have_title('Faculty')
    end
    it "should not have the title 'Home'" do
      visit '/faculties'
      expect(page).not_to have_title('Home')
    end
  end
end
