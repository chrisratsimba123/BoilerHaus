import React, { useState, useEffect } from 'react'
import { getOneArtist, destroyArtist } from '../../Services/artists'
import { useParams, Link } from 'react-router-dom'

const ArtistDetail = (props) => {

    const [artist, setArtist] = useState(null)
    const [isLoaded, setLoaded] = useState(false)
    const { id } = useParams()

    useEffect(() => {
        const fetchArtist = async () => {
            const artist = await getOneArtist(id)
            setArtist(artist)
            setLoaded(true)
        }
        fetchArtist()
    }, [id])

    if (!isLoaded) {
        return <h1>Loading...</h1>
    }

    return (
        <>
            <div className='artist-detail-container'>
                <img className='artist-detail-image' src={artist.image} alt={artist.username} />
                <div className='artist-detail-div'>
                    <div className='artist-detail-name'>{artist.username}</div>
                    <div className='artist-detail-genre'>{artist.genre}</div>
                    <div className='artist-detail-city'>{artist.city}</div>
                </div>
                {/* List Out Playlists that the Artist has Created */}
                <div className='associated-playlists'>
                    {artist.playlists.map((playlist) => {
                        return (<div className='associated-songs'>
                            <div>
                                {playlist.name}
                            </div>
                        </div>
                        )
                    })}
                </div>
                <div className='button-container-artist'>
                    <button className='artist-edit-button'><Link className='artist-edit-link' to={`/artists/${artist.id}/edit`}>Edit</Link></button>
                    <button className='artist-delete-button' onClick={() => destroyArtist(artist.id)}>Delete</button>
                </div>
            </div>
        </>
    )
}

export default ArtistDetail