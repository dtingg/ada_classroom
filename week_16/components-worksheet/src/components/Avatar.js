import React from "react";
import puppy from '../puppy.jpg';
import "./Avatar.css";

const Avatar = () => {
  return (
    <img src={puppy} className="avatar-photo" alt="puppy" />
  );
};

export default Avatar;
