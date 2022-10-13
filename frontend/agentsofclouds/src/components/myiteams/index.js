import React, { useEffect, useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import { getUserProducts } from "../redux/reducer/prodact/prodacts";
import { useDispatch, useSelector } from "react-redux";
import Prodactmodal from "../modals/prodact";
const Myiteams = () => {
  const [id, setId] = useState("");
  const [open, setOpen] = useState(false);
  const [method, setMethod] = useState("");
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const state = useSelector((state) => {
    return {
      userPordicts: state.prodaict.prodaict,
    };
  });
  const token = localStorage.getItem("token") || "";
  useEffect(() => {
    if (!token) {
      navigate("/login");
    }
    axios
      .get("http://localhost:5000/Products/userPro", {
        headers: { Authorization: `Bearer ${token}` },
      })
      .then((resulit) => {
        console.log(resulit.data.result);
        dispatch(getUserProducts(resulit.data.result));
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  return (
    <div className="maindiv">
      {state.userPordicts &&
        state.userPordicts.map((element) => {
          return (
            <div className="mainpro" key={element.product_id}>
              <p> {element.title} </p>
              <img style={{ width: "200px" }} src={element.picUrlProd}></img>
              <button
                onClick={() => {
                  setId(element.product_id);
                  setOpen(true);
                  setMethod("post");
                }}
              >
                update
              </button>
              <button
                onClick={() => {
                  setId(element.product_id);
                  setOpen(true);
                  setMethod("delete");
                }}
              >
                delete
              </button>
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
      <Prodactmodal method={method} id={id} open={open} setOpen={setOpen} />
    </div>
  );
};

export default Myiteams;
