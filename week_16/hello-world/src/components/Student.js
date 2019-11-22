import React from 'react';
import "./Student.css";
import PropTypes from "prop-types";

const Student = (props) => {
  const buildStyles = () => {
    let selectStyles = props.class ? props.class.toLowerCase() : "";
    selectStyles = selectStyles + " " + (props.present ? "present" : "absent");
    return selectStyles
  }

  return(
    <li className={buildStyles()}>
      {props.fullName} <p>{props.email}</p>{props.class} {props.present}
    </li>
  );
}

Student.defaultProps = {
  class: "no-class",
  email: "No Email On File"
}

Student.propTypes = {
  fullName: PropTypes.string.isRequired,
  email: PropTypes.string,
  class: PropTypes.string,
  present: PropTypes.bool.isRequired,
};

export default Student;
