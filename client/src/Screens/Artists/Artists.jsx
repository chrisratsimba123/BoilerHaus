import React, { useState, useEffect } from 'react'

import Artist from '../../Components/Artist/Artist'
import Layout from '../../Layout/Layout'
import { getAllArtists } from '../../Services/artists'

const Artists = (props) => {
    const [allArtists, setAllArtists] = useState([])

    useEffect(() => {
        const fetchArtists = async () => {
            const artists = await getAllArtists()
            setAllArtists(artists)
        }
        fetchArtists()
    }, [])

    const artistsJSX = allArtists.map((artist, index) =>
        <Artist id={artist.id} image={artist.image} name={artist.username} key={index} />
    )

    return (
        <Layout>
            <div className="artists">
                {artistsJSX}
            </div>
        </Layout>
    )
}

export default Artists

