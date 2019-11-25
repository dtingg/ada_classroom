import React from "react";
import "./UserCard.css";
import Avatar from "./Avatar"

const UserCard = (props) => {
  return (
    <div className="card">
      <Avatar url={props.avatarUrl} />
      <div className="card-text">
        <div>{props.userName}</div>
        <div>{props.rank}</div>
        <span>{props.score}</span>
      </div>
    </div>
  );
};

export default UserCard;
