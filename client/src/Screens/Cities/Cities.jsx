import React from 'react'
import { Link } from 'react-router-dom'
import './Cities.css'

import Banner from '../../Components/Banner/Banner'
import CitiesBanner from '../../Assets/Cities-Banner1.jpeg'
import NYCSubway from '../../Assets/NYC-Subway.jpeg'
import LDNSubway from '../../Assets/London-Subway.jpeg'
import BERSubway from '../../Assets/Berlin-Subway.jpeg'


const Cities = () => {
    return (
        <>
            <Banner className='banner-image' src={CitiesBanner} alt='Cities Banner' />
            <div className='categories-cities-screen'>
                <Link className='card-cities' to='/artists'>
                    <div className='nyc-div'>
                        <div className='category-image-cities'>
                            <img className='card-image-cities' src={NYCSubway} alt='NYC Subway' />
                        </div>
                        <div className='category-text-cities'>
                            <h1>New York City</h1>
                        </div>
                    </div>
                </Link>
                <Link className='card-cities' to='/artists'>
                    <div className='ldn-div'>
                        <div className='category-image-cities'>
                            <img className='card-image-cities' src={LDNSubway} alt='London Tube' />
                        </div>
                        <div className='category-text-cities'>
                            <h1>London</h1>
                        </div>
                    </div>
                </Link>
                <Link className='card-cities' to='/artists'>
                    <div className='ber-div'>
                        <div className='category-image-cities'>
                            <img className='card-image-cities' src={BERSubway} alt='Berlin U-Bahn' />
                        </div>
                        <div className='category-text-cities'>
                            <h1>Berlin</h1>
                        </div>
                    </div>
                </Link>
            </div>
        </>
    )
}

export default Cities