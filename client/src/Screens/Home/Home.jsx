import React from 'react'
import Genres from '../Genres/Genres'
import Artists from '../Artists/Artists'
import Cities from '../Cities/Cities'
import Layout from '../../Layout/Layout'

const Home = () => {
    return (
        <Layout>
            <div className='home'>
                <Genres />
                <Artists />
                <Cities />
            </div>
        </Layout>
    )
}

export default Home