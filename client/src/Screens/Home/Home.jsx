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
            <Banner className='banner-image' src={GenresImage} alt='Turntable Banner Image' />
            <div className='categories-home-screen'>
                <Link className='card' to='/cities'>
                    <div className='cities-div'>
                        <div className='category-image-home'>
                            <img className='card-image' src={CitiesImage} alt='Cities Banner' />
                        </div>
                        <div className='category-text-home'>
                            <h1>Cities</h1>
                        </div>
                    </div>
                </Link>
                <Link className='card' to='/genres'>
                    <div className='genres-div'>
                        <div className='category-image-home'>
                            <img className='card-image' src={Turntable} alt='Genres Banner' />
                        </div>
                        <div className='category-text-home'>
                            <h1>Genres</h1>
                        </div>
                    </div>
                </Link>
                <Link className='card' to='/artists'>
                    <div className='artists-div'>
                        <div className='category-image-home'>
                            <img className='card-image' src={ArtistsImage} alt='Artists Banner' />
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