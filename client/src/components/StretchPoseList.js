import React, { useState } from "react";
import StretchPoseItem from "./StretchPoseItem";

export default function StretchPoseList({ stretchData, clicked, setClicked, handleUpdateItem, handleFindVideoData, handleFindId }) {

      const [dataIndex, setDataIndex] = useState(0)
    
      const stretchItems = [...stretchData]
        .slice(dataIndex, dataIndex + 3)
    
        .map((stretchPose) => 
        <StretchPoseItem 
          key={stretchPose.id}
          stretchPose={stretchPose}
          handleUpdateItem={handleUpdateItem}
          clicked={clicked}
          setClicked={setClicked}
          handleFindVideoData={handleFindVideoData}
          handleFindId={handleFindId}
        />
      )
    
      function handleClickMore() {
        setDataIndex((dataIndex) => (dataIndex + 3) % stretchData.length);
      }
      function handleClickLess() {
        setDataIndex((dataIndex) => (dataIndex - 3) % stretchData.length);
      }
      
      return (
        <>
        <div className="comment-page-title">
          <p>Learn. Stretch. Heal</p>
        </div>
        <div className="comment-page-intro">
          <p>Our deepest passion is to help techies take care of their bodies.<br/>Explore strengthening and stretching poses with instructional videos to help guide you on your journey.</p>
        </div>
        <div className="container">
      <div className="row">
        <div className="col-12 col-md-5 col-lg-6"></div>
        <div className="stretchpose-list">
          <div className="stretch-container">{stretchItems}</div>
          <div className="float-container">
              <div className="next-container">
                    <button 
                    className="back-button" 
                    onClick={handleClickLess}><i class="gg-chevron-left"></i></button>
              </div>
              <div className="next-container">
                  <button 
                    className="next-button" 
                    onClick={handleClickMore}><i class="gg-chevron-right"></i></button>
                </div>
            </div>
        </div>
        </div>
        </div>
       </> 
      )
    }