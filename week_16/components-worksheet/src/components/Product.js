import React from "react";
import "./Product.css";

const Product = (props) => {
  const discountPriceColor = () => {
    let selectColor = "price-";
    selectColor = selectColor + (props.discount < props.standard ? "red" : "black");
    return selectColor;
  }

  const standardPriceFormat = () => {
    let selectStyle = "price-";
    selectStyle = selectStyle + (props.discount < props.standard ? "strike" : "regular");
    return selectStyle
  }

  return (
    <div>
      <img src={props.url} />
      <div>{props.name}</div>
      <span className={discountPriceColor()}>${props.discount.toFixed(2)}</span> <span className={standardPriceFormat()}>${props.standard.toFixed(2)}</span>
    </div>
  );
};

export default Product;
