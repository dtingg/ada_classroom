import React from 'react';
import "./Student.css";
import PropTypes from "prop-types";

const Student = (props) => {
  return(
    <h3>{props.fullName} {props.email}</h3>
  );
}

Student.propTypes = {
  fullName: PropTypes.string.isRequired,
  email: PropTypes.string,
};

export default Student;
