import React, { useState } from 'react'
import './ArtistCreate.css'
import { Redirect } from 'react-router-dom'
import { createArtist } from '../../Services/artists'

const ArtistCreate = (props) => {

    const [artist, setArtist] = useState({
        username: '',
        password: '',
        image: '',
        genre: '',
        city: ''
    })

    const [isCreated, setCreated] = useState(false)

    const handleChange = (e) => {
        const { name, value } = e.target
        // console.log(name, value)
        setArtist((prevState) => ({
            ...prevState,
            [name]: value
        })
    )
}

    const handleSubmit = async (e) => {
        e.preventDefault()
        const created = await createArtist(artist)
        setCreated({ created })
    }

    if (isCreated) {
        return <Redirect to={`/artists`} />
    }
    return (
        <>
            <form className='create-form-artist' onSubmit={handleSubmit}>
                <input
                    className='input-username-artist'
                    type='text'
                    placeholder='Username'
                    // value={artist.username}
                    name='username'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-password'
                    type='password'
                    placeholder='Password'
                    // value={artist.password_digest}
                    name='password'
                    required
                    onChange={handleChange}
                />
                <input
                    className='input-artist-image'
                    type='url'
                    placeholder='Image Link'
                    // value={artist.image}
                    name='image'
                    required
                    onChange={handleChange}
                />
                <input
                    className='input-artist-genre'
                    type='text'
                    placeholder='Primary Genre'
                    // value={artist.genre}
                    name='genre'
                    required
                    onChange={handleChange}
                />
                <input
                    className='input-artist-city'
                    type='text'
                    placeholder='City'
                    // value={artist.city}
                    name='city'
                    required
                    onChange={handleChange}
                />
                <input
                    className='input-artist-email'
                    type='text'
                    placeholder='Email'
                    // value={artist.email}
                    name='email'
                    required
                    onChange={handleChange}
                />
                <button type='submit' className='submit-button-artist-create'>Submit</button>
            </form>
        </>
    )

}

export default ArtistCreate