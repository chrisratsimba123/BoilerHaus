# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PlaylistSong.destroy_all
ArtistPlaylist.destroy_all
Playlist.destroy_all
Artist.destroy_all

@nyc_artist1 = Artist.create!(username: 'Ameme', password_digest: 'AmemeDJ2020!', email: 'amemedj@gmail.com',
image: 'https://images.unsplash.com/photo-1542851041-0a2a651561a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1506&q=80',
genre: 'Afro-House',
city: 'NYC')

@nyc_artist2 = Artist.create!(username: 'Purple Disco Machine', 
password_digest: 'PDMDJ2020!', 
email: 'pdmdj@gmail.com',
image: 'https://images.unsplash.com/photo-1583376097610-516c37bb66ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60',
genre: '80s Disco',
city: 'NYC')

@nyc_artist3 = Artist.create!(username: 'Tchami', 
password_digest: 'TchamiDJ2020!', 
email: 'tchamidj@gmail.com',
image: 'https://images.unsplash.com/photo-1588279247048-8e7b3959383d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60',
genre: 'Deep House',
city: 'NYC')

@ldn_artist1 = Artist.create!(username: 'Fisher', 
password_digest: 'FisherDJ2020!', 
email: 'fisherdj@gmail.com',
image: 'https://images.unsplash.com/photo-1599423424751-54e0c1187a02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60',
genre: 'Deep House',
city: 'London')

@ldn_artist2 = Artist.create!(username: 'Carl Cox', 
password_digest: 'CarlCox2020!', 
email: 'carlcoxdj@gmail.com',
image: 'https://images.unsplash.com/photo-1587304123078-167157cbac1c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60',
genre: 'Deep House',
city: 'London')

@ldn_artist3 = Artist.create!(username: 'Cerrone', 
password_digest: 'CerroneDJ2020!', 
email: 'cerronedj@gmail.com',
image: 'https://images.unsplash.com/photo-1552465328-690ddbd14aa9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60',
genre: '80s Disco',
city: 'London')

@ber_artist1 = Artist.create!(username: 'Black Coffee', 
password_digest: 'BlackCoffeeDJ2020!', 
email: 'blackcoffeedj@gmail.com',
image: 'https://images.unsplash.com/photo-1597242105258-aae69ba3c61f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60',
genre: 'Afro-House',
city: 'Berlin')
                
@ber_artist2 = Artist.create!(username: 'Laolu', 
password_digest: 'LaoluDJ2020!', 
email: 'laoludj@gmail.com',
image: 'https://images.unsplash.com/photo-1576049044685-5afd737219f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60',
genre: 'Afro-House',
city: 'Berlin')

@ber_artist3 = Artist.create!(username: 'Coeo', 
password_digest: 'CoeoDJ2020!', 
email: 'coeodj@gmail.com',
image: 'https://images.unsplash.com/photo-1584352840588-29d5c7c03878?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60',
genre: '80s Disco',
city: 'Berlin')

puts "#{Artist.count} artists created!"

@song1 = @nyc_artist1.songs.build(name: 'Patchido')

@song2 = @nyc_artist1.songs.build(name: 'No Justice, No Peace')

@song3 = @nyc_artist1.songs.build(name: 'Talk To Me')

@song4 = @nyc_artist1.songs.build(name: 'New York Tough')

@song5 = @nyc_artist1.songs.build(name: 'No Justice, No Peace - Dark Knight Mix')

@song6 = @nyc_artist1.songs.build(name: 'Patchido - O.T. Radio Mix')

@song7 = @nyc_artist1.songs.build(name: 'O Pa Mi Titi Deabe')

@song8 = @nyc_artist1.songs.build(name: 'Ngeke')

@song9 = @nyc_artist1.songs.build(name: 'Baakoya - Ameme Remix')

@song10 = @nyc_artist2.songs.build(name: 'Body Funk')

@song11 = @nyc_artist2.songs.build(name: 'Praise You')

@song12 = @nyc_artist2.songs.build(name: 'Hypnotized')

@song13 = @nyc_artist2.songs.build(name: 'Rain On Me')

@song14 = @nyc_artist2.songs.build(name: 'Dont Start Now')

@song15 = @nyc_artist2.songs.build(name: 'Music In You')

@song16 = @nyc_artist2.songs.build(name: 'Love For Days')

@song17 = @nyc_artist2.songs.build(name: 'Pray For Me')

@song18 = @nyc_artist2.songs.build(name: 'Soulmatic')

@song19 = @nyc_artist3.songs.build(name: 'Promesses')

@song20 = @nyc_artist3.songs.build(name: 'Adieu')

@song21 = @nyc_artist3.songs.build(name: 'After Life')

@song22 = @nyc_artist3.songs.build(name: 'You Know You Like It')

@song23 = @nyc_artist3.songs.build(name: 'Shades')

@song24 = @nyc_artist3.songs.build(name: 'Ghosts (feat. Hana)')

@song25 = @nyc_artist3.songs.build(name: 'Made In France')

@song26 = @nyc_artist3.songs.build(name: 'The Sermon (Malive & Lowdown Remix)')

@song27 = @nyc_artist3.songs.build(name: 'Bylina (Bellecour Remix)')

@song28 = @ldn_artist1.songs.build(name: 'Losing It')

@song29 = @ldn_artist1.songs.build(name: 'Ya Kidding')

@song30 = @ldn_artist1.songs.build(name: 'You Little Beauty')

@song31 = @ldn_artist1.songs.build(name: 'Freaks')

@song32 = @ldn_artist1.songs.build(name: 'Wanna Go Dancin')

@song33 = @ldn_artist1.songs.build(name: 'Crowd Control')

@song34 = @ldn_artist1.songs.build(name: 'Stop It')

@song35 = @ldn_artist1.songs.build(name: 'Losing It (Radio Edit)')

@song36 = @ldn_artist1.songs.build(name: 'Oi Oi')

@song37 = @ldn_artist2.songs.build(name: 'I Want You (Forever)')

@song38 = @ldn_artist2.songs.build(name: 'Finder')

@song39 = @ldn_artist2.songs.build(name: 'Inferno')

@song40 = @ldn_artist2.songs.build(name: 'Short Black')

@song41 = @ldn_artist2.songs.build(name: 'Bread and Butter')

@song42 = @ldn_artist2.songs.build(name: 'Nexus')

@song43 = @ldn_artist2.songs.build(name: 'We Rob Together')

@song44 = @ldn_artist2.songs.build(name: 'Kommen Zusammen')

@song45 = @ldn_artist2.songs.build(name: 'Sentimento Latino')

@song46 = @ldn_artist3.songs.build(name: 'Supernature')

@song47 = @ldn_artist3.songs.build(name: 'Give Me Love')

@song48 = @ldn_artist3.songs.build(name: 'Let Me Go - Cerrone Remix')

@song49 = @ldn_artist3.songs.build(name: 'Experience (feat. Laylow)')

@song50 = @ldn_artist3.songs.build(name: 'Therapy')

@song51 = @ldn_artist3.songs.build(name: 'Move Me (feat. Brendan Reilly)')

@song52 = @ldn_artist3.songs.build(name: 'Illuminate Me')

@song53 = @ldn_artist3.songs.build(name: 'Red Lips (feat. Wallace Turrell')

@song54 = @ldn_artist3.songs.build(name: 'Kiss It Better')

@song55 = @ber_artist1.songs.build(name: 'Turn Me On')

@song56 = @ber_artist1.songs.build(name: 'Muye')

@song57 = @ber_artist1.songs.build(name: 'Wish You Were Here')

@song58 = @ber_artist1.songs.build(name: 'Drive')

@song59 = @ber_artist1.songs.build(name: 'Embrace')

@song60 = @ber_artist1.songs.build(name: 'SBCNCSLY')

@song61 = @ber_artist1.songs.build(name: 'LaLaLa')

@song62 = @ber_artist1.songs.build(name: 'Come With Me')

@song63 = @ber_artist1.songs.build(name: 'Get Together')

@song64 = @ber_artist2.songs.build(name: 'Too Much Information - Laolu Edit')

@song65 = @ber_artist2.songs.build(name: 'Sene Kela - Laolu Edit')

@song66 = @ber_artist2.songs.build(name: 'There Is Still Pain Left - Laolu Remix')

@song67 = @ber_artist2.songs.build(name: 'Kokoro - Laolu Remix')

@song68 = @ber_artist2.songs.build(name: 'Force')

@song69 = @ber_artist2.songs.build(name: 'Djougou Yah')

@song70 = @ber_artist2.songs.build(name: 'Djougou Yah - Perc Mix')

@song71 = @ber_artist2.songs.build(name: 'The Return')

@song72 = @ber_artist2.songs.build(name: 'O Fantasma - Kadebostan Tigercity, Pt. 3')

@song73 = @ber_artist3.songs.build(name: 'Cabrio Mango')

@song74 = @ber_artist3.songs.build(name: 'Like It Is (Mixed)')

@song75 = @ber_artist3.songs.build(name: 'Japanese Woman')

@song76 = @ber_artist3.songs.build(name: 'Habibi Dub')

@song77 = @ber_artist3.songs.build(name: 'Joe Armstrong Theme')

@song78 = @ber_artist3.songs.build(name: 'Sharks, Lies & Videotape')

@song79 = @ber_artist3.songs.build(name: 'Urban - Coeo Remix')

@song80 = @ber_artist3.songs.build(name: '1981')

@song81 = @ber_artist3.songs.build(name: 'She Keeps It Good')

puts 'song created' if @song.save

@playlist1 = Playlist.create!(name: 'Good Vibes Only', image: 'https://images.unsplash.com/photo-1476136236990-838240be4859?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'One Tribe Music (Vol. 1)', song1: @song1, song2: @song2, song3: @song3)

@playlist2 = Playlist.create!(name: 'Nothing But Love', image: 'https://images.unsplash.com/photo-1483954743958-e7db4da5b8d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'One Tribe Music (Vol. 2)', song1: @song4, song2: @song5, song3: @song6)

@playlist3 = Playlist.create!(name: 'Dynamite', image: 'https://images.unsplash.com/photo-1459233313842-cd392ee2c388?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'One Tribe Music (Vol. 3)', song1: @song7, song2: @song8, song3: @song9)

@playlist4 = Playlist.create!(name: 'Funk Your Summer', image: 'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Funk Summer 2020 Away', song1: @song10, song2: @song11, song3: @song12)

@playlist5 = Playlist.create!(name: 'Essentials', image: 'https://images.unsplash.com/photo-1456590270581-fb7600bb90cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80', playlist_description: 'Groove Essentials', song1: @song13, song2: @song14, song3: @song15)

@playlist6 = Playlist.create!(name: 'Deep Funk Classics', image: 'https://images.unsplash.com/photo-1485221950524-1e3631c96283?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'House Party Essentials' song1: @song16, song2: @song17, song3: @song18)

@playlist7 = Playlist.create!(name: 'This Is My Confession', image: 'https://images.unsplash.com/photo-1486475554424-2fa50cd59f18?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'My Favorites Off Confessions', song1: @song19, song2: @song20, song3: @song21)

@playlist8 = Playlist.create!(name: 'Essentials', image: 'https://images.unsplash.com/photo-1444824775686-4185f172c44b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'NYC Garage Essentials', song1: @song22, song2: @song23, song3: @song24)

@playlist9 = Playlist.create!(name: 'Deep House Classics', image: 'https://images.unsplash.com/photo-1522258079018-a20492fa3b7b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Untz Untz Untz', song1: @song25, song2: @song26, song3: @song27)

@playlist10 = Playlist.create!(name: 'LDN-NYC', image: 'https://images.unsplash.com/photo-1511220043390-e929fe0edf55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'London Drum & Bass Essentials', song1: @song28, song2: @song29, song3: @song30)

@playlist11 = Playlist.create!(name: 'Eurostar', image: 'https://images.unsplash.com/photo-1511913411692-818ea059c8be?ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=60', playlist_description: 'French House Party', song1: @song31, song2: @song32, song3: @song33)

@playlist12 = Playlist.create!(name: 'Basement Tracks', image: 'https://images.unsplash.com/photo-1523895834873-529ef3a565a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Daft Punk Is Playing At My Haus', song1: @song34, song2: @song35, song3: @song36)

@playlist13 = Playlist.create!(name: 'Cabin Fever Jazz', image: 'https://images.unsplash.com/photo-1578010896624-fa4dd2c708b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'March 2020' song1: @song37, song2: @song38, song3: @song39)

@playlist14 = Playlist.create!(name: 'Awesome Soundwave', image: 'https://images.unsplash.com/photo-1539758462369-43adaa19bc1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: '#SaveOurDJs', song1: @song40, song2: @song41, song3: @song42)

@playlist15 = Playlist.create!(name: 'Intec', image: 'https://images.unsplash.com/photo-1571330735066-03aaa9429d89?ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=60', playlist_description: 'New Wave Has Arrived', song1: @song43, song2: @song44, song3: @song45)

@playlist16 = Playlist.create!(name: 'Seasons Greetings', image: 'https://images.unsplash.com/photo-1560987617-6de57e3d0574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Tis The Season To Be Loved', song1: @song46, song2: @song47, song3: @song48)

@playlist17 = Playlist.create!(name: 'Cerrone Selections', image: 'https://images.unsplash.com/photo-1483821838526-8d9756a6e1ed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Favorite Hits Over The Years', song1: @song49, song2: @song50, song3: @song51)

@playlist18 = Playlist.create!(name: 'Disco Playlist', image: 'https://images.unsplash.com/photo-1580686933569-374000c1ce67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'From Castel to Studio 54', song1: @song52, song2: @song53, song3: @song54)

@playlist19 = Playlist.create!(name: 'Music Is King', image: 'https://images.unsplash.com/photo-1503853585905-d53f628e46ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Music Sounds Better With You', song1: @song55, song2: @song56, song3: @song57)

@playlist20 = Playlist.create!(name: 'Spring Selections', image: 'https://images.unsplash.com/photo-1535133171663-a4bd711d1a8a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Durban Blooms This Time Of Year', song1: @song58, song2: @song59, song3: @song60)

@playlist21 = Playlist.create!(name: 'The Best of Black Coffee', image: 'https://images.unsplash.com/photo-1521073693667-45e659e3ad27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80', playlist_description: 'Spotify Selections', song1: @song61, song2: @song62, song3: @song63)

@playlist22 = Playlist.create!(name: 'Kokoro', image: 'https://images.unsplash.com/photo-1485921040253-3601b55d50aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'PanAm Music', song1: @song64, song2: @song65, song3: @song66)

@playlist23 = Playlist.create!(name: 'O Fantasma', image: 'https://images.unsplash.com/photo-1569098391264-18980acb40b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'From Bahia to Rio', song1: @song67, song2: @song68, song3: @song69)

@playlist24 = Playlist.create!(name: 'Sounds of Sasaab', image: 'https://images.unsplash.com/photo-1542321888-8a6abb3ec824?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'From Durban to Cairo', song1: @song70, song2: @song71, song3: @song72)

@playlist25 = Playlist.create!(name: 'Toy Tonics Classics', image: 'https://images.unsplash.com/photo-1530522546931-ac8b8dc6a2d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Tokyo-Osaka', song1: @song73, song2: @song74, song3: @song75)

@playlist26 = Playlist.create!(name: 'Defected In The House', image: 'https://images.unsplash.com/photo-1546449982-a01eedcc37c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Rotterdam-Bruges', song1: @song76, song2: @song77, song3: @song78)

@playlist27 = Playlist.create!(name: 'Future Disco', image: 'https://images.unsplash.com/photo-1556110554-2eb59e72fa3a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Prague-Bratislava', song1: @song79, song2: @song80, song3: @song81)

puts "#{Playlist.count} playlists created!"

@Artist_Playlist = ArtistPlaylist.create!(artist: @nyc_artist1, playlist: @playlist1, playlist: @playlist2, playlist: @playlist3)

@Artist_Playlist = ArtistPlaylist.create!(artist: @nyc_artist2, playlist: @playlist4, playlist: @playlist5, playlist: @playlist6)

@Artist_Playlist = ArtistPlaylist.create!(artist: @nyc_artist3, playlist: @playlist7, playlist: @playlist8, playlist: @playlist9)

@Artist_Playlist = ArtistPlaylist.create!(artist: @ldn_artist1, playlist: @playlist10, playlist: @playlist11, playlist: @playlist12)

@Artist_Playlist = ArtistPlaylist.create!(artist: @ldn_artist2, playlist: @playlist13, playlist: @playlist14, playlist: @playlist15)

@Artist_Playlist = ArtistPlaylist.create!(artist: @ldn_artist3, playlist: @playlist16, playlist: @playlist17, playlist: @playlist18)

@Artist_Playlist = ArtistPlaylist.create!(artist: @ber_artist1, playlist: @playlist19, playlist: @playlist20, playlist: @playlist21)

@Artist_Playlist = ArtistPlaylist.create!(artist: @ber_artist2, playlist: @playlist22, playlist: @playlist23, playlist: @playlist24)

@Artist_Playlist = ArtistPlaylist.create!(artist: @ber_artist3, playlist: @playlist25, playlist: @playlist26, playlist: @playlist27)

puts "created artist_playlist" if @ArtistPlaylist.create!

@Playlist_Song = PlaylistSong.create!(playlist: @playlist1, song: @song1, song: @song2, song: @song3)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist2, song: @song4, song: @song5, song: @song6)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist3, song: @song7, song: @song8, song: @song9)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist4, song: @song10, song: @song11, song: @song12)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist5, song: @song13, song: @song14, song: @song15)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist6, song: @song16, song: @song17, song: @song18)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist7, song: @song19, song: @song20, song: @song21)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist8, song: @song22, song: @song23, song: @song24)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist9, song: @song25, song: @song26, song: @song27)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist10, song: @song28, song: @song29, song: @song30)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist11, song: @song31, song: @song32, song: @song33)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist12, song: @song34, song: @song35, song: @song36)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist13, song: @song37, song: @song38, song: @song39)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist14, song: @song40, song: @song41, song: @song42)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist15, song: @song43, song: @song44, song: @song45)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist16, song: @song46, song: @song47, song: @song48)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist17, song: @song49, song: @song50, song: @song51)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist18, song: @song52, song: @song53, song: @song54)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist19, song: @song55, song: @song56, song: @song57)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist20, song: @song58, song: @song59, song: @song60)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist21, song: @song61, song: @song62, song: @song63)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist22, song: @song64, song: @song65, song: @song66)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist23, song: @song67, song: @song68, song: @song69)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist24, song: @song70, song: @song71, song: @song72)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist25, song: @song73, song: @song74, song: @song75)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist26, song: @song76, song: @song77, song: @song78)

@Playlist_Song = PlaylistSong.create!(playlist: @playlist27, song: @song79, song: @song80, song: @song81)

puts "created playlist_song" if @PlaylistSong.create!


