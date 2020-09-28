import React, { useState } from 'react'
import './Login.css'

export default function Login(props) {
    const [formData, setFormData] = useState({
        username: '',
        password: ''
    })
    const { username, password } = formData

    const handleChange = (e) => {
        const { name, value } = e.target
        setFormData(prevState => ({
            ...prevState,
            [name]: value
        }))
    }

    return (
        <form className='create-login-form' onSubmit={(e) => {
            e.preventDefault()
            props.loginSubmit(formData)
        }}>
            <h1 className='login-screen'>Login</h1>
            <label>
                <input
                    className='input-login-username'
                    type='text'
                    placeholder='Username'
                    value={username}
                    name='username'
                    required
                    autoFocus
                    onChange={handleChange}
                />
            </label>
            <br />
            <label>
                <input
                    className='input-login-password'
                    type='password'
                    placeholder='Password'
                    value={password}
                    name='password'
                    required
                    autoFocus
                    onChange={handleChange}
                />
            </label>
            <br />
            <button className='submit-login-button'>Submit</button>
        </form>
    )
}