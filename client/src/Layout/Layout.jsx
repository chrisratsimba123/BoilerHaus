import React from 'react'
import Header from '../Components/Shared/Header/Header'

const Layout = (props) => (
    <>
        <Header
            currentUser={props.currentUser}
            handleLogout={props.handleLogout}
            />
        <div className='layout-children'>
                {props.children}
        </div>
    </>
)

export default Layout