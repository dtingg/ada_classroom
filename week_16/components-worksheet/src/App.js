import React from 'react';
import './App.css';
import Avatar from "./components/Avatar";
import Badge from "./components/Badge";
import Product from "./components/Product";
import UserCard from './components/UserCard';

function App() {
  const avatar = {
    url: "http://place-puppy.com/200x200",
    alt: "puppy"
  };

  const badge = {
    low: 10,
    high: 75
  };

  const product = {
    name: "Magnolia Babydoll Tunic",
    url: "https://s7d5.scene7.com/is/image/Anthropologie/4130318350010_038_b",
    standard: 140,
    discount: 99,
  }

  const user = {
    userName: "Dianna",
    avatarUrl: "https://placekitten.com/200/200",
    rank: "Administrator",
    score: 55
  }

  return (
    <div className="App">
      <header className="App-header">
        <p>
          Avatar<br /><br />
          <span><Avatar url={avatar.url} alt={avatar.alt}/></span>
        </p>
        <p>
          Badges<br /><br />
          Notifications 
          <Badge number={badge.low}/>
          Notifications 
          <Badge number={badge.high}/>
        </p>
        <p>
          Product<br />
          <Product url={product.url} name={product.name} standard={product.standard} discount={product.discount}/>
        </p>
        <p>
          User Card
          <UserCard userName={user.userName} avatarUrl={user.avatarUrl} rank={user.rank} number={user.score}/>
        </p>
      </header>
    </div>
  );
}

export default App;
