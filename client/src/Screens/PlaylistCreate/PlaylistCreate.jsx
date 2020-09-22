import React, { useState } from 'react'
import './PlaylistCreate.css'
import { Redirect } from 'react-router-dom'
import { createPlaylist } from '../../Services/playlists'

const PlaylistCreate = (props) => {

    const [playlist, setPlaylist] = useState({
        name: '',
        image: '',
        playlist_description: '',
        song1: '',
        song2: '',
        song3: ''
    })

    const [isCreated, setCreated] = useState(false)

    const handleChange = (e) => {
        const { name, value } = e.target
        setPlaylist({
            // ...prevState,
            [name]: value
        })
    }

    const handleSubmit = async (e) => {
        e.preventDefault()
        const created = await createPlaylist(playlist)
        setCreated({ created })
    }

    if (isCreated) {
        return <Redirect to={`/playlists`} />
    }
    return (
        <>
            <form className='create-form-playlist' onSubmit={handleSubmit}>
                <input
                    className='input-playlist-name'
                    type='text'
                    placeholder='Name'
                    value={playlist.name}
                    name='name'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-playlist-image'
                    type='url'
                    placeholder='Image Link'
                    value={playlist.image}
                    name='image'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-playlist-description'
                    rows={10}
                    type='text'
                    placeholder='Playlist Descripton'
                    value={playlist.playlist_description}
                    name='description'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-song-name'
                    type='text'
                    placeholder='Song 1'
                    value={playlist.song1}
                    name='name'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-song-name'
                    type='text'
                    placeholder='Song 2'
                    value={playlist.song2}
                    name='name'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-song-name'
                    type='text'
                    placeholder='Song 3'
                    value={playlist.song3}
                    name='name'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <button type='submit' className='submit-button-playlist-create'>Submit</button>
            </form>
        </>
    )

}

export default PlaylistCreate