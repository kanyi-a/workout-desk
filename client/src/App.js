import './App.css';
import React, { useEffect, useState} from 'react';
import Login from './components/Login';
import { Route, Routes} from "react-router-dom";



function App() {
  const [user, setUser] = useState(null);

  //fetch user function
  useEffect(() => {
    fetch("http://localhost:4000/me").then((response) => {
      if (response.ok) {
        response.json().then((user) => setUser(user));
      }
    });
  }, []);

  //logout function

function handleLogout() {
    setUser(null);
  }

if (!user) return <Login onLogin={setUser} />;

  return (
    <div className="App">
      <header user={user} setUser={setUser} onLogout={handleLogout}/>
        <Routes>
          <Route exact path="*" element={user}/>

        </Routes>
      
    </div>
  );
}

export default App;
