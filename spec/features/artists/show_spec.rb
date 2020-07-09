require 'rails_helper'

RSpec.describe 'artists show page' do
  it "shows artist details" do
    carly_rae = Artist.create(name: "Carly Rae")

    visit "/artists/#{carly_rae.id}"

    expect(page).to have_content(carly_rae.name)
  end
end
