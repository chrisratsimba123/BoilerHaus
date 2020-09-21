import React from 'react'
import Header from '../Components/Shared/Header/Header'
import Footer from '../Components/Shared/Footer/Footer'

const Layout = (props) => (
    <div className='layout'>
        <Header
            currentUser={props.currentUser}
            handleLogout={props.handleLogout}
            />
        <div className='layout-children'>
                {props.children}
        </div>
        <Footer />
    </div>
)

export default Layout