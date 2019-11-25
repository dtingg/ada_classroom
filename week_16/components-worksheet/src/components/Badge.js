import React from "react";
import "./Badge.css";

const Badge = (props) => {
  return (
    <div>
      <span>Notifications</span>
      <span className="badge-number">{props.number}</span>
    </div>
  );
};

export default Badge;
