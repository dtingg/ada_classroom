import React from "react";
import "./UserCard.css";
import Avatar from "./Avatar"
import Badge from "./Badge"

const UserCard = (props) => {
  return (
    <div className="card">
      <Avatar url={props.avatarUrl} />
      <div className="card-text">
        <span>{props.userName}</span><Badge number={props.number} />
        <div>{props.rank}</div>
      </div>
    </div>
  );
};

export default UserCard;
