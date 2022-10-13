import React from 'react';
import { Link } from 'react-router-dom';

export default function Navbar({ user, setUser }) {

  function handleLogoutClick() {
    fetch("/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        setUser(null);
      }
    });
  }

  return (
      <>
      
         <div className="container-fluid">
            <div>
            <p className="welcome">Welcome, {user.username}!</p>

            <Link exact to="/comments" className="nav-button"> Mantra </Link>
            <Link exact to="*" className="nav-button"> Home </Link>
        
        <Link>
          <div class="dropdown">
          <button class="dropbtn">
            <img
                  src="https://mdbootstrap.com/img/Photos/Avatars/img (31).jpg"
                  class="rounded-circle"
                  height="22"
                  alt=""
                  loading="lazy"
                  />
              </button>       
             <div class="dropdown-content">
              
             <Link to={"/profile"} className=" dropdown-item">
                    <span>My Profile</span>
                  </Link>
          <a href="#" onClick={handleLogoutClick}>
                Logout
                </a>
        </div>
      </div>
      </Link>
           
      </div>
      </div>
    
    </>
  )
}