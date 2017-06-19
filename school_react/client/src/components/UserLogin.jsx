import React from 'react'
import { Link } from 'react-router'
import LoginBox from '../auth/LoginBox'

const UserLogin = () => (
  <div className="home">
    <h1 className='title'>My School</h1>
    <LoginBox url="http://localhost:5000/" />
  </div>
)

export default UserLogin