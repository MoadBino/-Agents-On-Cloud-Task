import React, { useState, useEffect } from "react";
import "./styel.css";
import { Link } from "react-router-dom";
import Faviortmodal from "../modals/favorit";
import axios from "axios";
import Addtocart from "../cart/addtocart";
import Addprodacit from "../modals/addprodacit";
import { useDispatch, useSelector } from "react-redux";
const Home = () => {
  const token = localStorage.getItem("token") || "";
  const [page, setPage] = useState(1);
  const [prodaicts, setProdaicts] = useState("");
  const [open, setOpen] = useState(false);
  const [openAdd, setOpenAdd] = useState(false);
  const [method, setmethod] = useState("");
  const [id, setId] = useState("");
  const [faviort_id, setFaviort_id] = useState([-1]);

  const state = useSelector((state) => {
    return {
      faviort: state.favorit.FavoritId,
    };
  });

  useEffect(() => {
    console.log(false);
    if (!open) {
      axios
        .get(`http://localhost:5000/Products/getall`)
        .then((resulit) => {
          const newResulit=resulit.data.result.reverse()
          setProdaicts(newResulit);
        })
        .catch((err) => {
          console.log(err);
        });
    }
  }, [open]);

  return (
    <div>
      <button
        style={{
          width: "7rem",
          height: "2rem",
          fontSize: "1rem",
          marginBottom: "3rem",
        }}
        onClick={() => {
          setOpenAdd(true);
        }}
      >
        Add prodacit
      </button>

      <div className="maindiv">
        {prodaicts &&
          prodaicts.map((element) => {
            let color = "black";
            return (
              <div className="mainpro" key={element.product_id}>
                <Link to={`/byid/${element.product_id}`}>
                  <p> {element.title} </p>
                  <img
                    style={{ width: "200px" }}
                    src={element.picUrlProd}
                  ></img>
                </Link>
                <div className="favCart">
                  <button
                        style={{borderRadius:"5px" }}
                    onClick={() => {
                      let id = element.product_id;
                      let price = +element.price;
                      Addtocart(id, price);
                    }}
                  >
                    add to cart
                  </button>
                  {state.faviort.includes(element.product_id) ||
                  faviort_id.includes(element.product_id) ? (
                    <button
                      style={{ backgroundColor: "gold",borderRadius:"5px" }}
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
                    
                      style={{ backgroundColor: "white" ,borderRadius:"5px"}}
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
              </div>
            );
          })}

        <Faviortmodal
          open={open}
          method={method}
          id={id}
          setOpen={setOpen}
          setFaviort_id={setFaviort_id}
          faviort_id={faviort_id}
        />
        <Addprodacit openAdd={openAdd} setOpenAdd={setOpenAdd} />
      </div>
    </div>
  );
};

export default Home;
