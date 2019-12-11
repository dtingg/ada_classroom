const newStudent = 'Ada';

const studentList = ['Charles', 'Grace', 'Katherine', 'Alexandra'];

const newList = [newStudent, ...studentList];

console.log(newList); // Ada, Charles, Grace, Katherine, Alexandra


const morningTracks = ['Master of Puppets', 'Black Metal', 'Paranoid'];
const eveningTracks = ['Ella Mai', 'American Teen', '17'];

const allTracks = [...morningTracks, ...eveningTracks]

console.log(allTracks)
