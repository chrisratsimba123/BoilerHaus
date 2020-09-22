import React from 'react'
import { Link } from 'react-router-dom'
import './Home.css'

import Banner from '../../Components/Banner/Banner'
import Turntable from '../../Assets/Turntable2.jpeg'
import CitiesImage from '../../Assets/NYC-Generic.jpeg'
import GenresImage from '../../Assets/Turntable1.jpeg'
import ArtistsImage from '../../Assets/Artist-Banner.jpeg'

const Home = () => {
    return (
        <>
            <Banner className='banner-image' src={Turntable} alt='Turntable Banner Image' />
            <div className='categories-home-screen'>
                <Link to='/cities'>
                    <div className='category'>
                        <div className='category-image-home'>
                            <img src={CitiesImage} alt='' />
                        </div>
                        <div className='category-text-home'>
                            <h1>Cities</h1>
                        </div>
                    </div>
                </Link>
                <Link to='/genres'>
                    <div className='category'>
                        <div className='category-image-home'>
                            <img src={GenresImage} alt='' />
                        </div>
                        <div className='category-text-home'>
                            <h1>Genres</h1>
                        </div>
                    </div>
                </Link>
                <Link to='/artists'>
                    <div className='category'>
                        <div className='category-image-home'>
                            <img src={ArtistsImage} alt='' />
                        </div>
                        <div className='category-text-home'>
                            <h1>Artists</h1>
                        </div>
                    </div>
                </Link>
            </div>
        </>
    )
}

export default Home