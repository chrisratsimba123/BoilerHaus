import React, { useState, useEffect } from 'react'
import { Switch, Route, useHistory } from 'react-router-dom'

import { createArtist, getAllArtists, updateArtist, destroyArtist } from '../Services/artists'
import Artists from '../Screens/Artists/Artists'
import ArtistCreate from '../Screens/ArtistCreate/ArtistCreate'
import ArtistDetail from '../Screens/ArtistDetail/ArtistDetail'
import ArtistEdit from '../Screens/ArtistEdit/ArtistEdit'

import { createPlaylist, getAllPlaylists, updatePlaylist, destroyPlaylist } from '../Services/playlists'
import Playlists from '../Screens/Playlists/Playlists'
import PlaylistCreate from '../Screens/PlaylistCreate/PlaylistCreate'
import PlaylistDetail from '../Screens/PlaylistDetail/PlaylistDetail'
import PlaylistEdit from '../Screens/PlaylistEdit/PlaylistEdit'