# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Song.delete_all
Artist.delete_all

madsen = Artist.create!(
  name: "Madsen",
  surname: "",
  style: "Alternative rock",
  country: "Germany",
  description:"Madsen is a German rock band that hails from Priesseck, a section of Clenze in the Wendland. Three of the members are
   brothers with the surname Madsen, hence the band's name.

  Their music combines elements of pop, rock, indie and punk together with lyrics in German. They released their self-titled debut
  album in 2005 and reached No. 23 on the German music charts. In 2006, they released their second album, Goodbye Logik. Frieden im Krieg
  was released in 2008 and Labyrinth in 2010.",
  image_url: "https://cloudinary.com/console/media_library#/dialog/image/upload/Steve_Earle_at_the_City_Winery_Chicago_2015-02-03_23.07.07__16414924106_hceemv")

steve_earl  = Artist.create!(
  name: "Steve",
  surname: "Earl",
  style: "Americana",
  country: "United States of America",
  description:"Steve Earle  (born January 17, 1955) is an American rock, country and folk singer-songwriter, record producer, author and
  actor. Earle began his career as a songwriter in Nashville and released his first EP in 1982. His breakthrough album was the 1986 album
  Guitar Town. Since then Earle has released 15 other studio albums and received three Grammy awards. His songs have been recorded by
  Johnny Cash, Waylon Jennings, Travis Tritt, Vince Gill, Patty Loveless, Shawn Colvin, Ian Stuart Donaldson and Emmylou Harris.[2] He
  has appeared in film and television, and has written a novel, a play, and a book of short stories.",
  image_url: "https://cloudinary.com/console/media_library#/dialog/image/upload/Steve_Earle_at_the_City_Winery_Chicago_2015-02-03_23.07.07__16414924106_hceemv")




baut_wieder_auf = Song.create!(
  artist: madsen,
  title: "Baut wieder auf",
  composer: "Sebastian Madsen",
  album: "Wo es beginnt",
  audio_url: "https://youtu.be/0tQhlvLqVdo")

goodbye_logik = Song.create!(
  artist: madsen,
  title: "Goodbye Logik",
  composer: "Sebastian Madsen",
  album: "Goodbye Logik", audio_url: "")


jeruzalem = Song.create!(
  artist: steve_earl,
  title: "Jerusalem",
  composer: "Steve Earl",
  album: "Jerusalem",
  audio_url: "")

galway_girl = Song.create!(
  artist: steve_earl,
  title: "Galway girl",
  composer: "Steve Earl",
  album: "Transcendental Blues",
  audio_url: "")
