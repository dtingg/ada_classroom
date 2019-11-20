import React from 'react';
import logo from './logo.svg';
import './App.css';
import StudentCollection from './components/StudentCollection';

const name = "Dianna"

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <StudentCollection/>
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Hello World!
        </a>
        <p>{name}'s Kitten</p>
        <img src="https://placekitten.com/408/287" className="Kitten" alt="kitten" />
      </header>
    </div>
  );
}

export default App;
