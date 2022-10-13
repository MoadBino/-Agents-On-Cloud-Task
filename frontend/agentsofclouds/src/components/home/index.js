import React, { useState, useEffect } from "react";
import axios from "axios";
const Home = () => {
  const [page, setPage] = useState(1);
  const [prodaicts, setProdaicts] = useState("");
  useEffect(() => {
    axios
      .get(`http://localhost:5000/Products/getall/${page}`)
      .then((resulit) => {
        console.log(resulit.data.result);
        setProdaicts(resulit.data.result);
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  return (
    <div className="maindiv">
      {prodaicts &&
        prodaicts.map((element) => {
          return (
            <div className="mainpro" key={element.product_id}>
              <p> {element.title} </p>
              <img style={{ width: "200px" }} src={element.picUrlProd}></img>
              <button> add to cart</button>
              <button> add to faviort</button>
            </div>
          );
        })}
      <style jsx>{`
        .mainpro {
          display: grid;
          border-style: outset;
          width: 20rem;
          justify-content: center;
        }
        .maindiv {
          display: grid;
          justify-content: center;
          gap:30px;
          grid-template-columns: auto auto;
        }
      `}</style>
    </div>
  );
};

export default Home;
