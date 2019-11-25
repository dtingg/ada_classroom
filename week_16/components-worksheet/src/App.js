import React from 'react';
import './App.css';
import Avatar from "./components/Avatar";
import Badge from "./components/Badge";
import Product from "./components/Product";

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

  return (
    <div className="App">
      <header className="App-header">
        <p>
          Avatar<br /><br />
          <span><Avatar url={avatar.url} alt={avatar.alt}/></span>
        </p>
        <p>
          Badges<br /><br />
          <Badge number={badge.low}/>
          <Badge number={badge.high}/>
        </p>
        <p>
          Product<br />
          <Product url={product.url} name={product.name} standard={product.standard} discount={product.discount}/>
        </p>
      </header>
    </div>
  );
}

export default App;
