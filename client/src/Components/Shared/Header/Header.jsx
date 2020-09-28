import React from 'react'
import { NavLink } from 'react-router-dom'
import './Header.css'

const Header = (props) => {

    // const { currentUser } = props

    return (
        <>
            <div className='nav-component'>
                <div className='title' alt='BoilerHaus'>
                    <div>
                        <NavLink className='logo' to='/'>BoilerHaus</NavLink>
                    </div>
                </div>
                <div className='nav-bar'>
                    <div className='nav-menu' alt='navigation-menu'>
                        <NavLink className='nav-links' to='/artists'>
                            Discover
                        </NavLink>
                        <NavLink className='nav-links' to='/playlists'>
                            Playlists
                        </NavLink>
                        <NavLink className='nav-links' to='/create-artist'>
                            New Artist
                        </NavLink>
                        <NavLink className='nav-links' to='/create-playlist'>
                            New Playlist
                        </NavLink>
                        <NavLink className='nav-links' to='/login'>
                            Login
                        </NavLink>
                        <NavLink className='nav-links' to='/register'>
                            Register
                        </NavLink>
                    </div>
                </div>
            </div>
        </>
    )
}

export default Header;