import React, { useState } from 'react'
import './Register.css'

export default function Register(props) {
    const [formData, setFormData] = useState({
        username: '',
        password: '',
        email: ''
    })
    const { username, password, email } = formData

    const handleChange = (e) => {
        const { name, value } = e.target
        setFormData(prevState => ({
            ...prevState,
            [name]: value
        }))
    }

    return (
        <form className='create-register-form' onSubmit={(e) => {
            e.preventDefault()
            props.registerSubmit(formData)
        }}>
            <h1 className='login-screen'>Register</h1>
            <label>
                <input 
                    className='input-register-username'
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
                    className='input-register-password'
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
            <label>
                <input 
                    className='input-register-email'
                    type='text'
                    placeholder='Email'
                    value={email}
                    name='email'
                    required
                    autoFocus
                    onChange={handleChange}
                />
            </label>
            <br />
            <button className='submit-register-button'>Submit</button>
        </form>
    )
}