// components/ComponentB.js
import React from 'react';

const ComponentB = (props) => {
  return (
    <div>
      The data from props is: { props.varName }
    </div>
  );
};

export default ComponentB;
