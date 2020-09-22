import React from 'react'
import { Link } from 'react-router-dom'
import Layout from '../../Layout/Layout'
import Banner from '../../Components/Banner/Banner'
import MusicBanner from '../../Assets/Music-Banner.jpeg'
import Disco from '../../Assets/Disco.jpeg'
import Afro from '../../Assets/Afro-House.jpeg'
import DeepHouse from '../../Assets/DeepHouse.jpeg'

const Genres = () => {
    return (
        <Layout>
            <Banner className='banner-image-genres' src={MusicBanner} alt='' />
            <div className='categories-genres-screen'>
                <Link to='/playlists'>
                    <div className='category'>
                        <div className='category-image-genres'>
                            <img src={Disco} alt='' />
                        </div>
                        <div className='category-text-genres'>
                            <h1>80s Disco</h1>
                        </div>
                    </div>
                </Link>
                <Link to='/playlists'>
                    <div className='category'>
                        <div className='category-image-genres'>
                            <img src={Afro} alt='' />
                        </div>
                        <div className='category-text-genres'>
                            <h1>Afro-House</h1>
                        </div>
                    </div>
                </Link>
                <Link to='/playlists'>
                    <div className='category'>
                        <div className='category-image-genres'>
                            <img src={DeepHouse} alt='' />
                        </div>
                        <div className='category-text-genres'>
                            <h1>Deep House</h1>
                        </div>
                    </div>
                </Link>
            </div>
        </Layout>
    )
}

export default Genres