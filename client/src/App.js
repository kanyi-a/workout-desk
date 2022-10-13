import './App.css';
import React, { useEffect, useState} from 'react';
import Login from './components/Login';
import Header from './components/Header';
import { Route, Routes} from "react-router-dom";
import MainContainer from './components/MainContainer';
import Profile from './components/Profile';



function App() {
  const [user, setUser] = useState(null);
  const [stretchData, setStretchData] = useState([]);
  const [videoData, setVideoData] = useState([]);

  //fetch user function
  useEffect(() => {
    fetch("/me").then((response) => {
      if (response.ok) {
        response.json().then((user) => setUser(user));
      }
    });
  }, []);

  useEffect(() => {
    fetch("/stretch_poses")
      .then((r) => r.json())
      .then((pose) => {setStretchData(pose)});
  }, []);





  //logout function

function handleLogout() {
    setUser(null);
  }

  function handleUpdateItem(updatedItemObj) {
    const editedItems = stretchData.map((item) => {
      if (item.id === updatedItemObj.id) {
        return updatedItemObj;
      } else {
        return item;
      }
    });
    setStretchData(editedItems);
  }

  function handleFindVideoData(stretchVideoData){
    setVideoData(stretchVideoData);
  }


if (!user) return <Login onLogin={setUser} />;

  return (
  
    <div className="App">
     
      <Header user={user} setUser={setUser} onLogout={handleLogout} />
        <Routes>
          <Route exact path="*" element={
            <MainContainer 
            stretchData={stretchData} 
            handleUpdateItem={handleUpdateItem} 
            videoData={videoData} 
            handleFindVideoData={handleFindVideoData} 
            user={user}
            />}/>
        <Route exact path="/profile" element={<Profile  user={user}/>} />
        </Routes>
      
    </div>
  );
}

export default App;
