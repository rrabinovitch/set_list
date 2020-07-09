require 'rails_helper'

RSpec.describe PlaylistSong do
  describe 'relationships' do
    it {should belong_to :song}
    it {should belong_to :playlist}
  end
end
