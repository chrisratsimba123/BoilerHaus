import React, { useState, useEffect } from 'react'
import { Switch, Route, useHistory } from 'react-router-dom'

import { createPlaylist, getAllPlaylists, updatePlaylist, destroyPlaylist } from '../Services/playlists'
import Playlists from '../Screens/Playlists/Playlists'
import PlaylistCreate from '../Screens/PlaylistCreate/PlaylistCreate'
import PlaylistDetail from '../Screens/PlaylistDetail/PlaylistDetail'
import PlaylistEdit from '../Screens/PlaylistEdit/PlaylistEdit'