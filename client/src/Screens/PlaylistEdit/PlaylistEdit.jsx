import React, { useState, useEffect } from 'react'
import { useParams, Redirect } from 'react-router-dom'
import Layout from '../../Layout/Layout'
import { getOnePlaylist, updatePlaylist } from '../../Services/playlists'

const PlaylistEdit = (props) => {

    const [playlist, setPlaylist] = useState({
        name: '',
        image: '',
        playlist_description: '',
        song1: '',
        song2: '',
        song3: ''
    })

    const [isUpdated, setUpdated] = useState(false)
    let { id } = useParams()

    useEffect(() => {
        const fetchPlaylist = async () => {
            const artist = await getOnePlaylist(id)
            setPlaylist(playlist)
        }
        fetchPlaylist()
    }, [id])

    const handleChange = (e) => {
        const { name, value } = e.target
        setPlaylist({
            ...prevState,
            [name]: value
        })
    }

    const handleSubmit = async (e) => {
        e.preventDefault()
        let { id } = props.match.params
        const updated = await updatePlaylist(id, playlist)
        setUpdated(updated)
    }

    if (isUpdated) {
        return <Redirect to={`/playlists/${props.match.params.id}`}/>
    }

    return (
        <Layout currentUser={props.currentUser}>
            <div className='playlist-edit'>
                <div className='playlist-edit-image-container'>
                    <img className='edit-playlist-image' src={playlist.image} alt={playlist.name}/>
                    <form onSubmit={handleSubmit}>
                        <input
                            className='edit-input-playlist-image'
                            type='url'
                            placeholder='Image'
                            value={playlist.image}
                            name='image'
                            required
                            autoFocus
                            onChange={handleChange}
                        />
                    </form>
                </div>
                <form className='edit-playlist-form' onSubmit={handleSubmit}>
                <input
                    className='input-playlist-name-edit-screen'
                    type='text'
                    placeholder='Name'
                    value={playlist.name}
                    name='name'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-playlist-description-edit-screen'
                    rows={10}
                    cols={78}
                    type='text'
                    placeholder='Playlist Descripton'
                    value={playlist.playlist_description}
                    name='description'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-song-name-edit-screen'
                    type='text'
                    placeholder='Song 1'
                    value={playlist.song1}
                    name='name'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-song-name-edit-screen'
                    type='text'
                    placeholder='Song 2'
                    value={playlist.song2}
                    name='name'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-song-name-edit-screen'
                    type='text'
                    placeholder='Song 3'
                    value={playlist.song3}
                    name='name'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <button type='submit' className='save-button-playlist'>Save</button>
            </form>
            </div>
        </Layout>
    )
}

export default ArtistEdit