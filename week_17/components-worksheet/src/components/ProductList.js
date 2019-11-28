import React from "react";
import "./ProductList.css";
import Product from "./Product";

const ProductList = (props) => {
  const productListComponents = props.products.map((product, i) => {
    return (
      <span key={i}>
        <Product url={product.url} name= {product.name} standard={product.standard} discount={product.discount} />
      </span>
    );
  });

  return (
    <div className="product-list">
      {productListComponents}
    </div>
  );
};

export default ProductList;
