import React from 'react'
import { Link } from 'react-router-dom'

export default function Header(props) {
    const { currentUser } = props 
    return (
        <header>
            <h1>BoilerHaus</h1> 
            {
                currentUser ?
                <div>
                    <p>{currentUser.username}</p>
                    <button onClick={props.handleLogout}>Logout</button>
                </div> :
                <Link to='login'>Login/Register</Link>
            }
            <hr />
            {
                currentUser &&
                <>
                    <Link to='/artists'>Artists</Link>
                    <Link to='/genres'>Genres</Link>
                    <Link to='/cities'>Cities</Link>
                </>
            }
        </header>
    )
}