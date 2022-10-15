import React, { useState, useEffect } from "react";
import "./styel.css";
import axios from "axios";
const Faviortmodal = ({ method, id, open, setOpen }) => {
  const token = localStorage.getItem("token") || "";
  const [openmodal, setOpenmodal] = useState(false);
  useEffect(() => {
    if (open) {
      setOpenmodal(true);
    }
  }, [open]);

  const addAndDelete = (endPoint) => {
    axios(`http://localhost:5000/favorit/${endPoint}/${id}`, {
      method: method,
      data: {},
      headers: { Authorization: `Bearer ${token}` },
    })
      .then((resulit) => {
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
                ? "add prodacit to favorite list "
                : "delete product from favorite list "}{" "}
            </p>
            <button
              id="button"
              onClick={() => {
                if (method === "post") {
                  addAndDelete("addtofav");
                } else {
                  addAndDelete("deletefav");
                }
              }}
            >
              {method === "delete" ? "delete " : "add"}
            </button>
          </div>
        </div>
      ) : (
        ""
      )}
    </div>
  );
};

export default Faviortmodal;
