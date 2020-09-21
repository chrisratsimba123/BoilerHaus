import React from 'react'
import { Link } from 'react-router-dom'

const Playlist = (props) => {
    return (
        <>
            <Link className='playlist' to={`/playlists/${props.id}`}>
                <img className='playlist-image' src={props.image} alt={props.name}/>
                <div className='playlist-name'>{props.name}</div>
                <div className='playlist-artist'>{props.artist_id}</div>
                <div className='playlist-description'>{props.playlist_description}</div>          
            </Link>
        </>
    )
}

export default Playlist 