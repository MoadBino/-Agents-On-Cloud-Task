import React, { useState, useEffect } from "react";
import axios from "axios";
import {
  updateProdact,
  deleteProdact,
} from "../../redux/reducer/prodact/prodacts";
import { useDispatch } from "react-redux";
const Prodactmodal = ({ method, id, open, setOpen }) => {
  const dispatch = useDispatch();
  const [openmodal, setOpenmodal] = useState(false);
  const [title, setTitle] = useState("");
  const [product_name, setProduct_name] = useState("");
  const [price, setPrice] = useState(200);
  const [description, setDescription] = useState("");

  const input = (type, placeholder, set) => {
    return (
      <input
        type={type}
        placeholder={placeholder}
        onChange={(e) => set(e.target.value)}
      ></input>
    );
  };
  useEffect(() => {
    if (open) {
      setOpenmodal(true);
    }
  }, [open]);

  const updateAndDelete = (endPoint) => {
    console.log(method, endPoint, id);
    axios(`http://localhost:5000/Products/${endPoint}/${id}`, {
      method: method,
      data: { title, product_name, price, description },
    })
      .then((resulit) => {
        console.log(resulit);
        setOpenmodal(false);
        setOpen(false);
        if (method === "post") {
          dispatch(
            updateProdact({
              title: title,
              product_name: product_name,
              price: price,
              description: description,
              id: id,
            })
          );
        } else {
          dispatch(deleteProdact(id));
        }
      })
      .catch((err) => {
        console.log(err);
      });
  };

  return (
    <div>
      {openmodal ? (
        <div id="myModal" class="modal">
          <div class="modal-content">
            <button
              className="close"
              onClick={() => {
                setOpenmodal(false);
                setOpen(false);
              }}
            >
              X
            </button>
            <p>
              {method === "post"
                ? "are you sure you want to delete you prodacit "
                : "update product"}{" "}
            </p>
            {method === "post" ? (
              <div>
                {input("text", "title", setTitle)}
                {input("text", "product_name", setProduct_name)}
                {input("number", "price", setPrice)}
                {input("text", "description", setDescription)}
              </div>
            ) : (
              ""
            )}
            <button
              onClick={() => {
                if (method === "post") {
                  updateAndDelete("ediatProduct");
                } else {
                  updateAndDelete("deletePro");
                }
              }}
            >
              {method === "delete" ? "delete " : "update"}
            </button>
          </div>
        </div>
      ) : (
        ""
      )}

      <style jsx>{`
        .modal {
          display: block;
          position: fixed;
          padding-top: 100px;
          left: 0;
          top: 0;
          width: 100%;
          height: 100%;
          overflow: auto;
          background-color: rgb(0, 0, 0);
          background-color: rgba(0, 0, 0, 0.4);
        }

        .modal-content {
          background-color: #fefefe;
          margin: auto;
          padding: 20px;
          border: 1px solid #888;
          width: 80%;
        }

        .close {
          color: #aaaaaa;
          float: right;
          font-weight: bold;
        }
      `}</style>
    </div>
  );
};

export default Prodactmodal;
