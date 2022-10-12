import React from 'react';
import Navbar from './NavBar';
import {GrYoga} from  "react-icons/gr";
import './Header.css'

export default function Header({ user, setUser, onLogout }) {


  return (
    <div className="header-background">
       
      <h1 className="header"> <GrYoga style={{color: 'white', fontSize: '50px'}}/> Desk-Fit  </h1>
      <Navbar user={user} setUser={setUser} onLogout={onLogout}/>
    </div>
  )
}