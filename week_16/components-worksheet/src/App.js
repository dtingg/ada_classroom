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
    standard: 140.00,
    discount: 99.00,
  }

  const user = {
    userName: "Dianna",
    avatarUrl: "https://placekitten.com/200/200",
    rank: "Administrator",
    score: 55
  }

  const products = [
    {
      name: "Ramey Notepad",
      url: "https://s7d5.scene7.com/is/image/Anthropologie/51374262_009_b",
      price: 18.00,
      discount: 12.95
    }, 
    {
      name: "Velvet Delaney Chair",
      url: "https://s7d5.scene7.com/is/image/Anthropologie/45202009_105_b",
      price: 1148.00,
      discount: 549.95
    }, 
    {
      name: "Salome Serving Set",
      url: "https://s7d5.scene7.com/is/image/Anthropologie/45372518AA_028_b",
      price: 42.00,
      discount: 29.95
    }, 
  ]

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
