require 'rails_helper'

RSpec.describe Song do
  describe 'validations' do
    it { should validate_presence_of :title}
  end

  describe 'relationships' do
    it { should belong_to :artist }
    it { should have_many :playlist_songs }
    it { should have_many(:playlists).through(:playlist_songs) } #1
  end

  describe 'methods' do
    it ".average_length" do
      carly_rae = Artist.create(name: "Carly Rae")
      bon_jovi = Artist.create(name: "Bon Jovi")
      song_1 = Song.create(title: 'I Really Like You', length: 100, play_count: 10000000, artist_id: carly_rae.id)
      song_2 = Song.create(title: 'Livin on a Prayer', length: 200, play_count: 10000000, artist_id: bon_jovi.id)
      song_3 = carly_rae.songs.create(title: 'Call Me Maybe', length: 300, play_count: 10000000)
      song_4 = carly_rae.songs.create(title: 'another carly song', length: 500, play_count: 10000000)

      expect(Song.average_length).to eq(275)
      expect(carly_rae.songs.average_length).to eq(300)
    end
  end
end
