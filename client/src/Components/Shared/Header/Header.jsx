import React from 'react'
import { NavLink } from 'react-router-dom'

const Header = (props) => {
    
    const { currentUser } = props 
    
    return (
        <nav>
            <div className='nav'>
                <NavLink className='logo' to='/'>BoilerHaus</NavLink>
                {
                    currentUser ?
                    <div>
                        <p>{currentUser.username}</p>
                        <button onClick={props.handleLogout}>Logout</button>
                    </div> :
                    <div className="login/register">
                        <NavLink to='/login'>Login</NavLink>
                        <NavLink to='/register'>Register</NavLink>
                    </div>
                }
                <hr />
                {
                    currentUser &&
                    <div className='links'>
                        <NavLink to='/artists'>Artists</NavLink>
                        <NavLink to='/genres'>Genres</NavLink>
                        <NavLink to='/cities'>Cities</NavLink>
                        <NavLink to='/create-artist'>New Artist</NavLink>
                        <NavLink to='/create-playlist'>New Playlist</NavLink>
                    </div>
                }
            </div>
        </nav>
    )
}

export default Header