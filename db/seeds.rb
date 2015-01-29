# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
User.destroy_all
Medium.destroy_all

10.times do |i|
  User.create(
    email: "user#{i}@example.com",
    password: "password",
    password_confirmation: "password"
  )
end

1.times do |i|
  Medium.create(
    title: "titlesample1",
    artist: 'artistsample1',
    kind: 'iTunes_song1',
    site: 'www.itunes.com',
    img: 'www.itunes_img1.com',
    prevw: 'www.itunes_prevw1.com'
  )
end

1.times do |i|
  Medium.create(
    title: 'titlesample2',
    artist: 'artistsample2',
    kind: 'iTunes_song2',
    site: 'www.itunes.com',
    img: 'www.itunes_img2.com',
    prevw: 'www.itunes_prevw2.com'
  )
end

1.times do |i|
  Medium.create(
    title: 'titlesample3',
    artist: 'artistsample3',
    kind: 'Youtube_video',
    site: 'www.youtube.com',
    img: 'www.youtube_img3.com'
  )
end
