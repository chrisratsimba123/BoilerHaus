import React from 'react'
import { Link } from 'react-router-dom'
import './Genres.css'

import Banner from '../../Components/Banner/Banner'
import DJBanner from '../../Assets/DJ-Banner.jpeg'
import Disco from '../../Assets/Disco.jpeg'
import Afro from '../../Assets/Afro-House.jpeg'
import DeepHouse from '../../Assets/DeepHouse.jpeg'

const Genres = () => {
    return (
        <>
            <Banner className='banner-image' src={DJBanner} alt='' />
            <div className='categories-genres-screen'>
                <Link className='card-genres' to='/playlists'>
                    <div className='disco-div'>
                        <div className='category-image-genres'>
                            <img className='card-image-genres' src={Disco} alt='' />
                        </div>
                        <div className='category-text-genres'>
                            <h1>80s Disco</h1>
                        </div>
                    </div>
                </Link>
                <Link className='card-genres' to='/playlists'>
                    <div className='afro-div'>
                        <div className='category-image-genres'>
                            <img className='card-image-genres' src={Afro} alt='' />
                        </div>
                        <div className='category-text-genres'>
                            <h1>Afro-House</h1>
                        </div>
                    </div>
                </Link>
                <Link className='card-genres' to='/playlists'>
                    <div className='deep-div'>
                        <div className='category-image-genres'>
                            <img className='card-image-genres' src={DeepHouse} alt='' />
                        </div>
                        <div className='category-text-genres'>
                            <h1>Deep House</h1>
                        </div>
                    </div>
                </Link>
            </div>
        </>
    )
}

export default Genres