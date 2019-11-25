import React from "react";
import "./Avatar.css";

const Avatar = (props) => {
  return (
    <img className="avatar-photo" src={props.url} alt={props.alt} />
  );
};

export default Avatar;
