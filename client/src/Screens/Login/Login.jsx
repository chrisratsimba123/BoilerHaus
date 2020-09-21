import React, { useState } from 'react'
import { Link } from 'react-router-dom'

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
        <form onSubmit={(e) => {
            e.preventDefault()
            props.loginSubmit(formData)
        }}>
            <h3>Login</h3>
            <label> Username:
                <input
                    className='input-login-username'
                    type='text'
                    placeholder='Name'
                    value={username}
                    name='username'
                    required
                    autoFocus
                    onChange={handleChange}
                />
            </label>
            <br />
            <label>Password:
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
            <Link to='/register'>Register</Link>
            <button>Submit</button>
        </form>
    )
}