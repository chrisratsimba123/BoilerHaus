import React from 'react'
import { Link } from 'react-router-dom'

const Artist = (props) => {
    return (
        <>
            <Link className='artist' to={`/artists/${props.id}`}>
                <img className='artist-image' src={props.image} alt={props.username}/>
                <div className='artist-name'>{props.username}</div>
            </Link>
        </>
    )
}

export default Artist