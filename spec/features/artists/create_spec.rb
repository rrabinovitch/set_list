require 'rails_helper'

RSpec.describe 'create a new artist' do
  describe  'when I visit the artists index page' do
    it "I can follow a link to create a new artist" do
      visit '/artists'

      expect(page).to_not have_content("Journey")

      click_on 'New Artist'

      expect(current_path).to eq('/artists/new')

      fill_in :name, with: "Journey"

      click_on 'Create Artist'

      expect(current_path).to eq('/artists')
      expect(page).to have_content("Journey")
    end

    it "it populates a flash message when I don't provide an artist with a name" do
      visit '/artists/new'

      click_on 'Create Artist'

      expect(page).to have_content("Artist not created: Required information is missing")
      expect(page).to have_button("Create Artist")
    end
  end
end
