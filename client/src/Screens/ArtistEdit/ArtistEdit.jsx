import React, { useState, useEffect } from 'react'
import { useParams, Redirect } from 'react-router-dom'
import './ArtistEdit.css'
import { getOneArtist, updateArtist } from '../../Services/artists'

const ArtistEdit = (props) => {

    const [artist, setArtist] = useState({
        username: '',
        password_digest: '',
        image: '',
        genre: '',
        city: ''
    })

    const [isUpdated, setUpdated] = useState(false)
    let { id } = useParams()

    useEffect(() => {
        const fetchArtist = async () => {
            const artist = await getOneArtist(id)
            setArtist(artist)
        }
        fetchArtist()
    }, [id])

    const handleChange = (e) => {
        const { name, value } = e.target
        setArtist((prevState) => ({
            ...prevState,
            [name]: value
        })
    )
}

    const handleSubmit = async (e) => {
        e.preventDefault()
        const updated = await updateArtist(id, artist)
        setUpdated(updated)
    }

    if (isUpdated) {
        return <Redirect to={`/artists/${props.id}`}/>
    }

    return (
        <>
            <div className='artist-edit'>
                <div className='artist-edit-image-container'>
                    <img className='edit-artist-image' src={artist.image} alt={artist.username}/>
                    <form onSubmit={handleSubmit}>
                        <input
                            className='edit-input-artist-image'
                            type='url'
                            placeholder='Image'
                            // value={artist.image}
                            name='image'
                            required
                            autoFocus
                            onChange={handleChange}
                        />
                    </form>
                </div>
                <form className='edit-artist-form' onSubmit={handleSubmit}>
                <input
                    className='input-username-artist-edit'
                    type='text'
                    placeholder='Username'
                    // value={artist.username}
                    name='username'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-password-edit'
                    type='password'
                    placeholder='Password'
                    // value={artist.password_digest}
                    name='password'
                    required
                    onChange={handleChange}
                />
                <input
                    className='input-artist-genre-edit'
                    type='text'
                    placeholder='Primary Genre'
                    // value={artist.genre}
                    name='genre'
                    required
                    onChange={handleChange}
                />
                <input
                    className='input-artist-city-edit'
                    type='text'
                    placeholder='City'
                    // value={artist.city}
                    name='city'
                    required
                    onChange={handleChange}
                />
                <button type='submit' className='save-button-artist-edit'>Save</button>
            </form>
            </div>
        </>
    )
}

export default ArtistEdit