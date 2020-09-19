import React from 'react'
import Header from '../Components/Shared/Header/Header'

export default function Layout(props) {
    return (
        <>
            <Header
                currentUser={props.currentUser}
                handleLogout={props.handleLogout}
            />
            <main>
                {props.children}
            </main>
        </>
    )
}