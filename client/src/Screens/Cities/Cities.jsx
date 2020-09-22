import React from 'react'
import { Link } from 'react-router-dom'

import Layout from '../../Layout/Layout'
import Banner from '../../Components/Banner/Banner'
import CitiesBanner from '../../Assets/Cities-Banner1.jpeg'
import NYCSubway from '../../Assets/NYC-Subway.jpeg'
import LDNSubway from '../../Assets/London-Subway.jpeg'
import BERSubway from '../../Assets/Berlin-Subway.jpeg'


const Cities = () => {
    return (
        <Layout>
            <Banner className='banner-image-cities' src={CitiesBanner} alt='' />
            <div className='categories-cities-screen'>
                <Link to='/artists'>
                    <div className='category'>
                        <div className='category-image-cities'>
                            <img src={NYCSubway} alt='' />
                        </div>
                        <div className='category-text-cities'>
                            <h1>New York City</h1>
                        </div>
                    </div>
                </Link>
                <Link to='/artists'>
                    <div className='category'>
                        <div className='category-image-cities'>
                            <img src={LDNSubway} alt='' />
                        </div>
                        <div className='category-text-cities'>
                            <h1>London</h1>
                        </div>
                    </div>
                </Link>
                <Link to='/artists'>
                    <div className='category'>
                        <div className='category-image-cities'>
                            <img src={BERSubway} alt='' />
                        </div>
                        <div className='category-text-cities'>
                            <h1>Berlin</h1>
                        </div>
                    </div>
                </Link>
            </div>
        </Layout>
    )
}

export default Cities