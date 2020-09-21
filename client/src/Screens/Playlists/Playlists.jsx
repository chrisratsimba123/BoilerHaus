import React, { useState, useEffect } from 'react'

import Playlist from '../../Components/Playlist/Playlist'
import Layout from '../../Layout/Layout'
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
        <Layout>
            <div className="playlists">
                {playlistsJSX}
            </div>
        </Layout>
    )
}

export default Playlists