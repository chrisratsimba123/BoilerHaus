import React from 'react'

export default function Banner(props) {

    const { src, alt } = props

    return (
        <div>
            <div className='banner'>
                <img className='banner-image'
                    src={src}
                    alt={alt}
                />
                <div className='shadow-box'>
                    <h2>BoilerHaus</h2>
                    <p>A collaborative music platform for DJs created by DJs.</p>
                </div>
            </div>
        </div>
    )
}