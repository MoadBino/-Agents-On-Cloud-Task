import axios from "axios";
import "./styel.css"
import React, { useState, useEffect } from "react";
import Faviortmodal from "../modals/favorit";
import { getFavoritList } from "../redux/reducer/Favorit";
import { useDispatch, useSelector } from "react-redux";
const Favorit = () => {
  const [open, setOpen] = useState(false);
  const [method, setmethod] = useState("");
  const [id, setId] = useState("");
  const state = useSelector((state) => {
    return {
      faviort: state.favorit.Favorit,
    };
  });
  const dispatch = useDispatch();
  const token = localStorage.getItem("token") || "";

  useEffect(() => {
    axios
      .get(`http://localhost:5000/favorit/getfav`, {
        headers: { Authorization: `Bearer ${token}` },
      })
      .then((resulit) => {
        dispatch(getFavoritList(resulit.data.result));
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  return (
    <div>
      {state.faviort &&
        state.faviort.map((element) => {
          return (
            <div className="mainfav">
              <div className="chhhildfav">
                <p> {element.title} </p>
                <img style={{ width: "200px" }} src={element.picUrlProd}></img>
                <button
                  onClick={() => {
                    setmethod("delete");
                    setId(element.product_id);
                    setOpen(true);
                  }}
                >
                  Remove
                </button>
              </div>
            </div>
          );
        })}
      <Faviortmodal open={open} method={method} id={id} setOpen={setOpen} />
    </div>
  );
};

export default Favorit;
