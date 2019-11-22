// src/components/StudentCollection.js
import React from 'react';
import Student from './Student';

const StudentCollection = () => {
  const students = [
    {
      fullName: "Ada Lovelace",
      email: "ada@lovelace.uk",
      class: "Leaves",
      present: false,
    },
    {
      fullName: "Katherine Johnson",
      email: "kat@nasa.gov",
      class: "Branches",
      present: true,
    },
  ];

  const studentComponents = students.map((student, i) => {
    return (
      <li key={i}>
        <Student fullName={ student.fullName } email={ student.email } class={ student.class } present={ student.present } />
      </li>
    );
  });

  return (
    <ul className="student-collection">
      {studentComponents}
    </ul>
  );
};

export default StudentCollection;
