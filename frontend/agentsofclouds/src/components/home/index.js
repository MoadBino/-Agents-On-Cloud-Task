import React, { useState, useEffect } from "react";
import Faviortmodal from "../modals/favorit";
import axios from "axios";
import Addtocart from "../cart/addtocart";
import { useDispatch, useSelector } from "react-redux";
const Home = () => {
  const token = localStorage.getItem("token") || "";
  const [page, setPage] = useState(1);
  const [prodaicts, setProdaicts] = useState("");
  const [open, setOpen] = useState(false);
  const [method, setmethod] = useState("");
  const [id, setId] = useState("");
  const state = useSelector((state) => {
    return {
      faviort: state.favorit.FavoritId,
    };
  });

  useEffect(() => {
    axios
      .get(`http://localhost:5000/Products/getall/${page}`)
      .then((resulit) => {
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
          let color = "black";
          return (
            <div className="mainpro" key={element.product_id}>
              <p> {element.title} </p>
              <img style={{ width: "200px" }} src={element.picUrlProd}></img>
              <button
                onClick={() => {
                  console.log(element.product_id);
                  Addtocart((element.product_id, element.price));
                }}
              >
                add to cart
              </button>
              {state.faviort.includes(element.product_id) ? (
                <button
                  style={{ backgroundColor: "gold" }}
                  onClick={() => {
                    setmethod("delete");
                    setId(element.product_id);
                    setOpen(true);
                  }}
                >
                  delete from faviort
                </button>
              ) : (
                <button
                  style={{ backgroundColor: { color } }}
                  onClick={() => {
                    setmethod("post");
                    setId(element.product_id);
                    setOpen(true);
                  }}
                >
                  add to faviort
                </button>
              )}
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
          gap: 30px;
          grid-template-columns: auto auto;
        }
      `}</style>
      <Faviortmodal open={open} method={method} id={id} setOpen={setOpen} />
    </div>
  );
};

export default Home;
