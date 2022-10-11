import React, {useState}from "react";
import StretchPoseList from "./StretchPoseList";
import CommentList from "./CommentList";
import ShowComment from "./ShowComment";
import Video from "./Video";
import { Route, Routes } from "react-router-dom";

export default function MainContainer({ stretchData, handleUpdateItem, handleFindVideoData, videoData, user }) {

  const [clicked, setClicked] = useState(false);
    
  console.log(stretchData)

    return (
      <div>
           <Routes>
           <Route exact path="/video" element={
              <Video 
                clicked={clicked} 
                setClicked={setClicked}
                videoData={videoData}
                stretchData={stretchData}
                />} 
              />
              <Route exact path="/comments" element={
              <CommentList user={user} />} 
              />
          <Route exact path="/comments/:id" element={
               <ShowComment />
             }
             />
             <Route exact path="*" element={
                  <StretchPoseList 
                  stretchData={stretchData} 
                  clicked={clicked} 
                  setClicked={setClicked}
                  handleUpdateItem={handleUpdateItem}
                  handleFindVideoData={handleFindVideoData}
                  />}  
                  />
           </Routes> 

      
      </div>

    )
}