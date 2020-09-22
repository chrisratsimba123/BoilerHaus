import React from 'react'
import { NavLink } from 'react-router-dom'
import './Header.css'

const Header = (props) => {

    const { currentUser } = props

    return (
        <>
            <div className='nav-component'>
                <div className='title' alt='BoilerHaus'>
                    <div>
                        <NavLink className='logo' to='/'>BoilerHaus</NavLink>
                        {/* {
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
                    } */}
                    </div>
                </div>
                <div className='nav-bar'>
                    <div className='nav-menu' alt='navigation-menu'>
                        <NavLink className='nav-links' to='/'>
                            Home
                        </NavLink>
                        <NavLink className='nav-links' to='/login'>
                            Login
                        </NavLink>
                        <NavLink className='nav-links' to='/register'>
                            Register
                        </NavLink>
                        <NavLink className='nav-links' to='/artists'>
                            Discover
                        </NavLink>
                        <NavLink className='nav-links' to='/create-artist'>
                            New Artist
                        </NavLink>
                        <NavLink className='nav-links' to='/create-playlist'>
                            New Playlist
                        </NavLink>
                    </div>
                </div>
            </div>
        </>
    )
}

export default Header;