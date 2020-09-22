import React, { useState, useEffect } from 'react';
import { Switch, Route, useHistory } from 'react-router-dom'

import './App.css';

import Layout from './Layout/Layout'
import Home from './Screens/Home/Home'
import Login from './Screens/Login/Login'
import Register from './Screens/Register/Register'
import Cities from './Screens/Cities/Cities'
import Genres from './Screens/Genres/Genres'
import Artists from './Screens/Artists/Artists'

import { loginUser, registerUser, verifyUser, removeToken } from './Services/auth'
import ArtistsContainer from './Containers/ArtistsContainer'
import PlaylistsContainer from './Containers/PlaylistsContainer'

function App() {
  const [currentUser, setCurrentUser] = useState(null)
  const history = useHistory()

  useEffect(() => {
    const handleVerify = async () => {
      const userData = await verifyUser()
      setCurrentUser(userData)
      // history.push('/')
    }
    handleVerify()
  }, [])

  const loginSubmit = async (loginData) => {
    const userData = await loginUser(loginData)
    setCurrentUser(userData)
    history.push('/')
  }

  const registerSubmit = async (registerData) => {
    const userData = await registerUser(registerData) 
    setCurrentUser(userData)
    history.push('/')
  }

  const handleLogout = () => {
    localStorage.removeItem('authToken')
    removeToken()
    setCurrentUser(null)
    history.push('/')
  }
  
  return (
    <Layout
      currentUser={currentUser}
      handleLogout={handleLogout}
    >
      <Switch>
        <Route exact path='/'>
          <Home />
        </Route>
        <Route path='/login'>
          <Login
            loginSubmit={loginSubmit}
          />
        </Route>
        <Route path='/register'>
          <Register
            registerSubmit={registerSubmit}
          />
        </Route>
        <Route path='/cities'>
          <Cities />
        </Route>
        <Route path='/genres'>
          <Genres />
        </Route>
        <Route path='/artists'>
          <Artists />
        </Route>
        <Route path='/'>
          <ArtistsContainer 
            currentUser={currentUser}
          />
          <PlaylistsContainer 
            currentUser={currentUser}
          />
        </Route>
      </Switch> 
    </Layout>
  )
}

export default App;
