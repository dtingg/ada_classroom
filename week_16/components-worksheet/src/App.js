import React from 'react';
import './App.css';
import Avatar from "./components/Avatar";
import Badge from "./components/Badge";
import Product from "./components/Product";
import UserCard from './components/UserCard';
import ProductList from "./components/ProductList";

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
    alt: "dress",
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
      alt: "notepad",
      standard: 18.00,
      discount: 12.95,
    }, 
    {
      name: "Velvet Delaney Chair",
      url: "https://s7d5.scene7.com/is/image/Anthropologie/45202009_105_b",
      alt: "chair",
      standard: 1148.00,
      discount: 549.95,
    }, 
    {
      name: "Salome Serving Set",
      url: "https://s7d5.scene7.com/is/image/Anthropologie/45372518AA_028_b",
      alt: "silverware",
      standard: 42.00,
      discount: 29.95,
    }, 
  ]

  return (
    <div className="App">
      <header className="App-header">
        <div>
          Avatar<br />
          <Avatar url={avatar.url} alt={avatar.alt}/>
        </div>
        <div>
          Badges<br /><br />
          <div>
            Notifications 
            <Badge number={badge.low}/>
            <br />
            <br />
          </div>          
          <div>
            Notifications 
            <Badge number={badge.high}/>
            <br />
            <br />
          </div>
        </div>
        <div>
          Product
          <Product url={product.url} name={product.name} standard={product.standard} discount={product.discount}/>
        </div>
        <div>
          User Card
          <UserCard userName={user.userName} avatarUrl={user.avatarUrl} rank={user.rank} number={user.score}/>
        </div>
        <div>
          Product List
          <ProductList products={products} />
        </div>
      </header>
    </div>
  );
}

export default App;
