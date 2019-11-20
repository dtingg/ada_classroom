import React from 'react';

const Student = (props) => {
  return(
    <h3>{props.fullName} {props.email}</h3>
  );
}

export default Student;
