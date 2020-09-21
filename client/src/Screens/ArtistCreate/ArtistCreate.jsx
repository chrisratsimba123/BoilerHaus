import React, { useState } from 'react'
import Layout from '../../Layout/Layout'
import { Redirect } from 'react-router-dom'
import { createArtist } from '../../Services/artists'

const ArtistCreate = (props) => {

    const [artist, setArtist] = useState({
        username: '',
        password_digest: '',
        image: '',
        genre: '',
        city: ''
    })

    const [isCreated, setCreated] = useState(false)

    const handleChange = (e) => {
        const { name, value } = e.target
        setArtist({
            ...prevState,
            [name]: value
        })
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
        <Layout currentUser={props.currentUser}>
            <form className='create-form-artist' onSubmit={handleSubmit}>
                <input
                    className='input-username-artist'
                    type='text'
                    placeholder='Name'
                    value={artist.username}
                    name='name'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-password'
                    type='password'
                    placeholder='Password'
                    value={artist.password_digest}
                    name='password'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-artist-image'
                    type='url'
                    placeholder='Image Link'
                    value={artist.image}
                    name='image'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-artist-genre'
                    type='text'
                    placeholder='Primary Genre'
                    value={artist.genre}
                    name='genre'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <input
                    className='input-artist-city'
                    type='text'
                    placeholder='City'
                    value={artist.city}
                    name='city'
                    required
                    autoFocus
                    onChange={handleChange}
                />
                <button type='submit' className='submit-button'>Submit</button>
            </form>
        </Layout>
    )

}

export default ArtistCreate