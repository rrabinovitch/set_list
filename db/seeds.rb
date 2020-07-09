# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PlaylistSong.destroy_all
Playlist.destroy_all
Song.destroy_all
Artist.destroy_all

carly_rae = Artist.create(name: "Carly Rae")
bon_jovi = Artist.create(name: "Bon Jovi")
britney = Artist.create(name: "Britney Spears")
bone_thugs = Artist.create(name: "Bone Thugs-N-Harmony")
song_1 = Song.create(title: "I Really Like You", length: 200, play_count: 1000, artist_id: carly_rae.id)
song_2 = Song.create(title: "Livin on a Prayer", length: 500, play_count: 2000, artist_id: bon_jovi.id)
song_3 = carly_rae.songs.create(title: "Call Me Maybe", length: 300, play_count: 3000)
song_4 = britney.songs.create(title: "Toxic", length: 250, play_count: 1400)
song_5 = britney.songs.create(title: "Crazy", length: 200, play_count: 1500)
song_6 = bone_thugs.songs.create!(title: "First of the Month", length: 550, play_count: 2600)
song_7 = bone_thugs.songs.create!(title: "Thuggish Ruggish Bone", length: 600, play_count: 3400)

party = Playlist.create!(name: "Party")
favorites = Playlist.create!(name: "Favorites")
rap = Playlist.create!(name: "Rap")

rap.songs << song_7
rap.songs << song_6

PlaylistSong.create!(song: song_5, playlist: favorites)
