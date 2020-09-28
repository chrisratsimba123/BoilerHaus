import React, { useState, useEffect } from 'react'
import './Playlists.css'

import Playlist from '../../Components/Playlist/Playlist'
import { getAllPlaylists } from '../../Services/playlists'

const Playlists = (props) => {
    const [allPlaylists, setAllPlaylists] = useState([])

    useEffect(() => {
        const fetchPlaylists = async () => {
            const playlists = await getAllPlaylists()
            setAllPlaylists(playlists)
        }
        fetchPlaylists()
    }, [])

    const playlistsJSX = allPlaylists.map((playlist, index) =>
        <Playlist id={playlist.id} image={playlist.image} name={playlist.name} key={index} />
    )

    return (
        <>
            <div className="playlists">
                {playlistsJSX}
            </div>
        </>
    )
}

export default Playlists