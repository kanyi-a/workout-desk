import React from 'react';
import { Link } from 'react-router-dom';

export default function StretchPoseItem({ stretchPose, handleUpdateItem, handleFindVideoData }) {

  const { id, title, image, category, description, is_favoured: is_favoured } = stretchPose;



  function handleClick(e) {
    e.preventDefault();

    fetch(`/stretch_poses/${id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ is_favoured: !is_favoured }),
    })
      .then((r) => r.json())
      .then((updatedItem) => handleUpdateItem(updatedItem))
  }
  
  function handleItemClick(){
      handleFindVideoData(stretchPose)
 }

  const summary = description.substring(0, 50)
  

  return (
    <div className="stretch-pose-item">
      <div>
        <h2 className="stretch-card-title">{title}</h2>
        <img src={image} className="stretchimage" alt="stretch pose"/>
        <h4 className="stretch-card-category">{category}</h4>
        <ul className="stretch-card-description">{summary}</ul>
      </div>
      <Link exact to="/video" onClick={handleItemClick} ><i class="gg-play-button-o"></i></Link>
    </div>
  );
}