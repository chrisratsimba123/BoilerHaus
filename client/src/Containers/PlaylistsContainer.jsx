import React, { useState, useEffect } from 'react'
import { Switch, Route, useHistory } from 'react-router-dom'

import { createPlaylist, getAllPlaylists, updatePlaylist, destroyPlaylist } from '../Services/playlists'
import Playlists from '../Screens/Playlists/Playlists'
import PlaylistCreate from '../Screens/PlaylistCreate/PlaylistCreate'
import PlaylistDetail from '../Screens/PlaylistDetail/PlaylistDetail'
import PlaylistEdit from '../Screens/PlaylistEdit/PlaylistEdit'

export default function PlaylistsContainer(props) {
    const [playlists, setPlaylists] = useState([])
    const history = useHistory()
    const { currentUser } = props 

    useEffect(() => {
        const fetchPlaylists = async () => {
            const playlistArray = await getAllPlaylists()
            setPlaylists(playlistArray)
        }
        fetchPlaylists()
    }, [])

    const newPlaylist = async (formData) => {
        const newlyCreatedPlaylist = await createPlaylist(id, formData)
        setPlaylists(prevState => [...prevState, newlyCreatedPlaylist])
        history.push('/playlists')
    }

    const editPlaylist = async (id, formData) => {
        const updatedPlaylist = await updatePlaylist(id, formData)
        setPlaylists(prevState => prevState.map(playlist => {
            return playlist.id === Number(id) ? updatedPlaylist : playlist
        }))
        history.push(`/playlists/${id}`)
    }

    const deletePlaylist = async (id) => {
        await destroyPlaylist(id)
        setPlaylists(prevState => prevState.filter(playlist => {
            return playlist.id !== id 
        }))
        history.push('/playlists')
    }

    return (
        <Switch>
            <Route path='/playlists/new'>
                <PlaylistCreate 
                    newPlaylist={newPlaylist}
                />
            </Route>
            <Route path='/playlists/:id'>
                <PlaylistDetail 
                    currentUser={currentUser}
                    deletePlaylist={deletePlaylist}
                />
            </Route>
            <Route path='/playlists/:id/edit'>
                <PlaylistEdit 
                    editPlaylist={editPlaylist}
                />
            </Route>
            <Route path='/playlists'>
                <Playlists 
                    playlists={playlists}
                />
            </Route>
        </Switch>
    )
}