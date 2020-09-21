import React, { useState, useEffect } from 'react'
import Layout from '../../Layout/Layout'
import { getOnePlaylist, destroyPlaylist } from '../../Services/playlists'
import { useParams, Link } from 'react-router-dom'

const PlaylistDetail = (props) => {

    const [playlist, setPlaylist] = useState(null)
    const [isLoaded, setLoaded] = useState(false)
    const { id } = useParams()

    useEffect(() => {
        const fetchPlaylist = async () => {
            const playlist = await getOnePlaylist(id)
            setPlaylist(playlist)
            setLoaded(true)
        }
        fetchPlaylist()
    }, [id])

    if (!isLoaded) {
        return <h1>Loading...</h1>
    }

    return (
        <Layout>
            <div className='playlist-detail-container'>
                <img className='playlist-detail-image' src={playlist.image} alt={playlist.name}/>
                <div className='playlist-detail-div'>
                    <div className='playlist-detail-name'>{playlist.name}</div>
                    <div className='playlist-detail-description'>{playlist.playlist_description}</div>
                </div>
                <div className='button-container-playlist'>
                    <button className='playlist-edit-button'><Link className='playlist-edit-link' to={`/playlists/${playlist.id}/edit`}>Edit</Link></button>
                    <button className='playlist-delete-button' onClick={() => destroyPlaylist(playlist.id)}>Delete</button>
                </div>
            </div>
        </Layout>
    )
}

export default ArtistDetail