import React from 'react';
import './App.css';
import Avatar from "./components/Avatar";
import Badge from "./components/Badge";

function App() {
  const avatar = {
    url: "http://place-puppy.com/200x200",
    alt: "puppy"
  }

  const notifications=10

  return (
    <div className="App">
      <header className="App-header">
        <p>
          Avatar<br /><br />
          <div><Avatar url={avatar.url} alt={avatar.alt}/></div>
        </p>
        <p>
          <div>Badge</div><br />
          <Badge number={notifications}/>
        </p>
      </header>
    </div>
  );
}

export default App;
