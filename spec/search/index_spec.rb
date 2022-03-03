require 'rails_helper'

RSpec.describe 'search spec' do
  context "and when I select Turing from the dropdown menu and click find nearest station" do
    it "should take me to /search" do
      visit '/'

      select "Turing", from: :location
      click_on "Find Nearest Station"

      expect(current_path).to eq("/search")
      expect(page).to have_content("16M BUILDING 16M B-1")
      expect(page).to have_content("1550 Market St")
      expect(page).to have_content("ELEC")
      expect(page).to have_content("24 hours daily")
    end
  end
end
