import React, { useState, useEffect } from 'react'
import { Switch, Route, useHistory } from 'react-router-dom'

import { createArtist, getAllArtists, updateArtist, destroyArtist } from '../Services/artists'
import Artists from '../Screens/Artists/Artists'
import ArtistCreate from '../Screens/ArtistCreate/ArtistCreate'
import ArtistDetail from '../Screens/ArtistDetail/ArtistDetail'
import ArtistEdit from '../Screens/ArtistEdit/ArtistEdit'

export default function ArtistsContainer(props) {
    const [artists, setArtists] = useState([])
    const history = useHistory()
    const { currentUser } = props 

    useEffect(() => {
        const fetchArtists = async () => {
            const artistArray = await getAllArtists()
            setArtists(artistArray)
        }
        fetchArtists()
    }, [])

    const newArtist = async (formData) => {
        const newlyCreatedArtist = await createArtist(formData)
        setArtists(prevState => [...prevState, newlyCreatedArtist])
        history.push('/artists')
    }

    const editArtist = async (id, formData) => {
        const updatedArtist = await updateArtist(id, formData)
        setArtists(prevState => prevState.map(artist => {
            return artist.id === Number(id) ? updatedArtist : artist
        }))
        history.push(`/artists/${id}`)
    }

    const deleteArtist = async (id) => {
        await destroyArtist(id)
        setArtists(prevState => prevState.filter(artist => {
            return artist.id !== id 
        }))
        history.push('/artists')
    }

    return (
        <Switch>
            <Route path='/artists/new'>
                <ArtistCreate 
                    newArtist={newArtist}
                />
            </Route>
            <Route path='/artists/:id'>
                <ArtistDetail 
                    currentUser={currentUser}
                    deleteArtist={deleteArtist}
                />
            </Route>
            <Route path='/artists/:id/edit'>
                <ArtistEdit 
                    editArtist={editArtist}
                />
            </Route>
            <Route path='/artists'>
                <Artists 
                    artists={artists}
                />
            </Route>
        </Switch>
    )
}