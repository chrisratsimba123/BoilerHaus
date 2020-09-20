# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# PlaylistSong.destroy_all
# ArtistPlaylist.destroy_all
Playlist.destroy_all
Song.destroy_all
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

@song1 = Song.create!(name: 'Patchido')

@song2 = Song.create!(name: 'No Justice, No Peace')

@song3 = Song.create!(name: 'Talk To Me')

@song4 = Song.create!(name: 'New York Tough')

@song5 = Song.create!(name: 'No Justice, No Peace - Dark Knight Mix')

@song6 = Song.create!(name: 'Patchido - O.T. Radio Mix')

@song7 = Song.create!(name: 'O Pa Mi Titi Deabe')

@song8 = Song.create!(name: 'Ngeke')

@song9 = Song.create!(name: 'Baakoya - Ameme Remix')

@song10 = Song.create!(name: 'Body Funk')

@song11 = Song.create!(name: 'Praise You')

@song12 = Song.create!(name: 'Hypnotized')

@song13 = Song.create!(name: 'Rain On Me')

@song14 = Song.create!(name: 'Dont Start Now')

@song15 = Song.create!(name: 'Music In You')

@song16 = Song.create!(name: 'Love For Days')

@song17 = Song.create!(name: 'Pray For Me')

@song18 = Song.create!(name: 'Soulmatic')

@song19 = Song.create!(name: 'Promesses')

@song20 = Song.create!(name: 'Adieu')

@song21 = Song.create!(name: 'After Life')

@song22 = Song.create!(name: 'You Know You Like It')

@song23 = Song.create!(name: 'Shades')

@song24 = Song.create!(name: 'Ghosts (feat. Hana)')

@song25 = Song.create!(name: 'Made In France')

@song26 = Song.create!(name: 'The Sermon (Malive & Lowdown Remix)')

@song27 = Song.create!(name: 'Bylina (Bellecour Remix)')

@song28 = Song.create!(name: 'Losing It')

@song29 = Song.create!(name: 'Ya Kidding')

@song30 = Song.create!(name: 'You Little Beauty')

@song31 = Song.create!(name: 'Freaks')

@song32 = Song.create!(name: 'Wanna Go Dancin')

@song33 = Song.create!(name: 'Crowd Control')

@song34 = Song.create!(name: 'Stop It')

@song35 = Song.create!(name: 'Losing It (Radio Edit)')

@song36 = Song.create!(name: 'Oi Oi')

@song37 = Song.create!(name: 'I Want You (Forever)')

@song38 = Song.create!(name: 'Finder')

@song39 = Song.create!(name: 'Inferno')

@song40 = Song.create!(name: 'Short Black')

@song41 = Song.create!(name: 'Bread and Butter')

@song42 = Song.create!(name: 'Nexus')

@song43 = Song.create!(name: 'We Rob Together')

@song44 = Song.create!(name: 'Kommen Zusammen')

@song45 = Song.create!(name: 'Sentimento Latino')

@song46 = Song.create!(name: 'Supernature')

@song47 = Song.create!(name: 'Give Me Love')

@song48 = Song.create!(name: 'Let Me Go - Cerrone Remix')

@song49 = Song.create!(name: 'Experience (feat. Laylow)')

@song50 = Song.create!(name: 'Therapy')

@song51 = Song.create!(name: 'Move Me (feat. Brendan Reilly)')

@song52 = Song.create!(name: 'Illuminate Me')

@song53 = Song.create!(name: 'Red Lips (feat. Wallace Turrell')

@song54 = Song.create!(name: 'Kiss It Better')

@song55 = Song.create!(name: 'Turn Me On')

@song56 = Song.create!(name: 'Muye')

@song57 = Song.create!(name: 'Wish You Were Here')

@song58 = Song.create!(name: 'Drive')

@song59 = Song.create!(name: 'Embrace')

@song60 = Song.create!(name: 'SBCNCSLY')

@song61 = Song.create!(name: 'LaLaLa')

@song62 = Song.create!(name: 'Come With Me')

@song63 = Song.create!(name: 'Get Together')

@song64 = Song.create!(name: 'Too Much Information - Laolu Edit')

@song65 = Song.create!(name: 'Sene Kela - Laolu Edit')

@song66 = Song.create!(name: 'There Is Still Pain Left - Laolu Remix')

@song67 = Song.create!(name: 'Kokoro - Laolu Remix')

@song68 = Song.create!(name: 'Force')

@song69 = Song.create!(name: 'Djougou Yah')

@song70 = Song.create!(name: 'Djougou Yah - Perc Mix')

@song71 = Song.create!(name: 'The Return')

@song72 = Song.create!(name: 'O Fantasma - Kadebostan Tigercity, Pt. 3')

@song73 = Song.create!(name: 'Cabrio Mango')

@song74 = Song.create!(name: 'Like It Is (Mixed)')

@song75 = Song.create!(name: 'Japanese Woman')

@song76 = Song.create!(name: 'Habibi Dub')

@song77 = Song.create!(name: 'Joe Armstrong Theme')

@song78 = Song.create!(name: 'Sharks, Lies & Videotape')

@song79 = Song.create!(name: 'Urban - Coeo Remix')

@song80 = Song.create!(name: '1981')

@song81 = Song.create!(name: 'She Keeps It Good')

puts "#{Song.count} songs created!"

@playlist1 = Playlist.create!(name: 'Good Vibes Only', image: 'https://images.unsplash.com/photo-1476136236990-838240be4859?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'One Tribe Music (Vol. 1)')

@playlist1.songs.push([@song1, @song2, @song3])

@playlist2 = Playlist.create!(name: 'Nothing But Love', image: 'https://images.unsplash.com/photo-1483954743958-e7db4da5b8d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'One Tribe Music (Vol. 2)')

@playlist2.songs.push([@song4, @song5, @song6])

@playlist3 = Playlist.create!(name: 'Dynamite', image: 'https://images.unsplash.com/photo-1459233313842-cd392ee2c388?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'One Tribe Music (Vol. 3)')

@playlist3.songs.push([@song7, @song8, @song9])

@playlist4 = Playlist.create!(name: 'Funk Your Summer', image: 'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Funk Summer 2020 Away')

@playlist4.songs.push([@song10, @song11, @song12])

@playlist5 = Playlist.create!(name: 'Essentials', image: 'https://images.unsplash.com/photo-1456590270581-fb7600bb90cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80', playlist_description: 'Groove Essentials')

@playlist5.songs.push([@song13, @song14, @song15])

@playlist6 = Playlist.create!(name: 'Deep Funk Classics', image: 'https://images.unsplash.com/photo-1485221950524-1e3631c96283?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'House Party Essentials')

@playlist5.songs.push([@song16, @song17, @song18])

@playlist7 = Playlist.create!(name: 'This Is My Confession', image: 'https://images.unsplash.com/photo-1486475554424-2fa50cd59f18?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'My Favorites Off Confessions')

@playlist7.songs.push([@song19, @song20, @song21])

@playlist8 = Playlist.create!(name: 'Essentials', image: 'https://images.unsplash.com/photo-1444824775686-4185f172c44b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'NYC Garage Essentials')

@playlist8.songs.push([@song22, @song23, @song24])

@playlist9 = Playlist.create!(name: 'Deep House Classics', image: 'https://images.unsplash.com/photo-1522258079018-a20492fa3b7b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Untz Untz Untz')

@playlist9.songs.push([@song25, @song26, @song27])

@playlist10 = Playlist.create!(name: 'LDN-NYC', image: 'https://images.unsplash.com/photo-1511220043390-e929fe0edf55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'London Drum & Bass Essentials')

@playlist10.songs.push([@song28, @song29, @song30])

@playlist11 = Playlist.create!(name: 'Eurostar', image: 'https://images.unsplash.com/photo-1511913411692-818ea059c8be?ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=60', playlist_description: 'French House Party')

@playlist11.songs.push([@song31, @song32, @song33])

@playlist12 = Playlist.create!(name: 'Basement Tracks', image: 'https://images.unsplash.com/photo-1523895834873-529ef3a565a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Daft Punk Is Playing At My Haus')

@playlist12.songs.push([@song34, @song35, @song36])

@playlist13 = Playlist.create!(name: 'Cabin Fever Jazz', image: 'https://images.unsplash.com/photo-1578010896624-fa4dd2c708b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'March 2020')

@playlist13.songs.push([@song37, @song38, @song39])

@playlist14 = Playlist.create!(name: 'Awesome Soundwave', image: 'https://images.unsplash.com/photo-1539758462369-43adaa19bc1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: '#SaveOurDJs')

@playlist14.songs.push([@song40, @song41, @song42])

@playlist15 = Playlist.create!(name: 'Intec', image: 'https://images.unsplash.com/photo-1571330735066-03aaa9429d89?ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=60', playlist_description: 'New Wave Has Arrived')

@playlist15.songs.push([@song43, @song44, @song45])

@playlist16 = Playlist.create!(name: 'Seasons Greetings', image: 'https://images.unsplash.com/photo-1560987617-6de57e3d0574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Tis The Season To Be Loved')

@playlist16.songs.push([@song46, @song47, @song48])

@playlist17 = Playlist.create!(name: 'Cerrone Selections', image: 'https://images.unsplash.com/photo-1483821838526-8d9756a6e1ed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Favorite Hits Over The Years')

@playlist17.songs.push([@song49, @song50, @song51])

@playlist18 = Playlist.create!(name: 'Disco Playlist', image: 'https://images.unsplash.com/photo-1580686933569-374000c1ce67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'From Castel to Studio 54')

@playlist18.songs.push([@song52, @song53, @song54])

@playlist19 = Playlist.create!(name: 'Music Is King', image: 'https://images.unsplash.com/photo-1503853585905-d53f628e46ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Music Sounds Better With You')

@playlist19.songs.push([@song55, @song56, @song57])

@playlist20 = Playlist.create!(name: 'Spring Selections', image: 'https://images.unsplash.com/photo-1535133171663-a4bd711d1a8a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Durban Blooms This Time Of Year')

@playlist20.songs.push([@song58, @song59, @song60])

@playlist21 = Playlist.create!(name: 'The Best of Black Coffee', image: 'https://images.unsplash.com/photo-1521073693667-45e659e3ad27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80', playlist_description: 'Spotify Selections')

@playlist21.songs.push([@song61, @song62, @song63])

@playlist22 = Playlist.create!(name: 'Kokoro', image: 'https://images.unsplash.com/photo-1485921040253-3601b55d50aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'PanAm Music')

@playlist22.songs.push([@song64, @song65, @song66])

@playlist23 = Playlist.create!(name: 'O Fantasma', image: 'https://images.unsplash.com/photo-1569098391264-18980acb40b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'From Bahia to Rio')

@playlist23.songs.push([@song67, @song68, @song69])

@playlist24 = Playlist.create!(name: 'Sounds of Sasaab', image: 'https://images.unsplash.com/photo-1542321888-8a6abb3ec824?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'From Durban to Cairo')

@playlist24.songs.push([@song70, @song71, @song72])

@playlist25 = Playlist.create!(name: 'Toy Tonics Classics', image: 'https://images.unsplash.com/photo-1530522546931-ac8b8dc6a2d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Tokyo-Osaka')

@playlist25.songs.push([@song75, @song74, @song75])

@playlist26 = Playlist.create!(name: 'Defected In The House', image: 'https://images.unsplash.com/photo-1546449982-a01eedcc37c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Rotterdam-Bruges')

@playlist26.songs.push([@song76, @song77, @song78])

@playlist27 = Playlist.create!(name: 'Future Disco', image: 'https://images.unsplash.com/photo-1556110554-2eb59e72fa3a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=60', playlist_description: 'Prague-Bratislava')

@playlist27.songs.push([@song79, @song80, @song81])

puts "#{Playlist.count} playlists created!"

# @Artist_Playlist = ArtistPlaylist.create!(artist: @nyc_artist1, playlist: @playlist1, playlist: @playlist2, playlist: @playlist3)

# @Artist_Playlist = ArtistPlaylist.create!(artist: @nyc_artist2, playlist: @playlist4, playlist: @playlist5, playlist: @playlist6)

# @Artist_Playlist = ArtistPlaylist.create!(artist: @nyc_artist3, playlist: @playlist7, playlist: @playlist8, playlist: @playlist9)

# @Artist_Playlist = ArtistPlaylist.create!(artist: @ldn_artist1, playlist: @playlist10, playlist: @playlist11, playlist: @playlist12)

# @Artist_Playlist = ArtistPlaylist.create!(artist: @ldn_artist2, playlist: @playlist13, playlist: @playlist14, playlist: @playlist15)

# @Artist_Playlist = ArtistPlaylist.create!(artist: @ldn_artist3, playlist: @playlist16, playlist: @playlist17, playlist: @playlist18)

# @Artist_Playlist = ArtistPlaylist.create!(artist: @ber_artist1, playlist: @playlist19, playlist: @playlist20, playlist: @playlist21)

# @Artist_Playlist = ArtistPlaylist.create!(artist: @ber_artist2, playlist: @playlist22, playlist: @playlist23, playlist: @playlist24)

# @Artist_Playlist = ArtistPlaylist.create!(artist: @ber_artist3, playlist: @playlist25, playlist: @playlist26, playlist: @playlist27)

# puts "created artist_playlist" if @ArtistPlaylist.create!

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist1, song: @song1, song: @song2, song: @song3)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist2, song: @song4, song: @song5, song: @song6)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist3, song: @song7, song: @song8, song: @song9)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist4, song: @song10, song: @song11, song: @song12)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist5, song: @song13, song: @song14, song: @song15)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist6, song: @song16, song: @song17, song: @song18)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist7, song: @song19, song: @song20, song: @song21)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist8, song: @song22, song: @song23, song: @song24)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist9, song: @song25, song: @song26, song: @song27)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist10, song: @song28, song: @song29, song: @song30)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist11, song: @song31, song: @song32, song: @song33)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist12, song: @song34, song: @song35, song: @song36)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist13, song: @song37, song: @song38, song: @song39)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist14, song: @song40, song: @song41, song: @song42)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist15, song: @song43, song: @song44, song: @song45)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist16, song: @song46, song: @song47, song: @song48)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist17, song: @song49, song: @song50, song: @song51)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist18, song: @song52, song: @song53, song: @song54)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist19, song: @song55, song: @song56, song: @song57)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist20, song: @song58, song: @song59, song: @song60)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist21, song: @song61, song: @song62, song: @song63)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist22, song: @song64, song: @song65, song: @song66)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist23, song: @song67, song: @song68, song: @song69)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist24, song: @song70, song: @song71, song: @song72)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist25, song: @song73, song: @song74, song: @song75)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist26, song: @song76, song: @song77, song: @song78)

# @Playlist_Song = PlaylistSong.create!(playlist: @playlist27, song: @song79, song: @song80, song: @song81)

# puts "created playlist_song" if @PlaylistSong.create!


