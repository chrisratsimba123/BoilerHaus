import React from 'react'
import Header from '../Components/Shared/Header/Header'
import Footer from '../Components/Shared/Footer/Footer'

const Layout = (props) => (
    <>
        <Header
            currentUser={props.currentUser}
            handleLogout={props.handleLogout}
            />
        <div className='layout-children'>
                {props.children}
        </div>
        {/* <Footer /> */}
    </>
)

export default Layout