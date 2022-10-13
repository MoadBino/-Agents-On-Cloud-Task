import React, { useState, useEffect } from "react";
import axios from "axios";
const Faviortmodal = ({ method, id, open, setOpen }) => {
    console.log(method);
  const token = localStorage.getItem("token") || "";
  const [openmodal, setOpenmodal] = useState(false);
  useEffect(() => {
    if (open) {
      setOpenmodal(true);
    }
  }, [open]);

  const addAndDelete = (endPoint) => {
    console.log(method, endPoint, id);
    axios(`http://localhost:5000/favorit/${endPoint}/${id}`, {
      method: method,
      data: {},
      headers: { Authorization: `Bearer ${token}` },
    })
      .then((resulit) => {
        console.log(resulit);
        setOpenmodal(false);
        setOpen(false);
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
            <button
              onClick={() => {
                if (method === "post") {
                  addAndDelete("addtofav");
                } else {
                  addAndDelete("deletefav");
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

export default Faviortmodal;
