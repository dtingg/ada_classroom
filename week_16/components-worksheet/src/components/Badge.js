import React from "react";
import "./Badge.css";

const Badge = (props) => {
  const badgeColor = () => {
    let selectColor = "badge-";
    selectColor = selectColor + (props.number >= 50 ? "green" : "red");
    return selectColor;
  }

  return (
    <div>
      <span>Notifications</span>
      <span className={badgeColor()}>{props.number}</span>
    </div>
  );
};

export default Badge;
