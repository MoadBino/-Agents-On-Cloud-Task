import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import CDUComment from "../modals/comment.CDU";
import "./styel.css";
import { getcomment } from "../redux/reducer/comment";
import { useDispatch, useSelector } from "react-redux";
import axios from "axios";
const Byid = () => {
  const [user_id, setUser_id] = useState("")

  const token = localStorage.getItem("token") || "";
  const state = useSelector((state) => {
    return {
      comment: state.comment.comment,
    };
  });
  const dispacth = useDispatch();
  const [method, setMethod] = useState("");
  const [open, setOpen] = useState(false);
  const [prodaict, setProdaict] = useState("");
  const [pro_id, setPro_id] = useState("");
  const { id } = useParams();
  const createButton = (value, Method, Product_id) => {
    return (
      <button
        id="commentButton"
        onClick={() => {
          setMethod(Method);
          setOpen(true);
          setPro_id(Product_id);
        }}
      >
        {value}
      </button>
    );
  };
  useEffect(() => {
    axios
      .get(`http://localhost:5000/Products/byid/${id}`, {
        headers: { Authorization: `Bearer ${token}` },
      })
      .then((resulit) => {
        setProdaict(resulit.data.result);
      })
      .catch((err) => {
        console.log(err);
      });
  }, [id]);
  useEffect(() => {
    if (open == false) {
      axios
        .get(`http://localhost:5000/comment/getcomment/${id}`, {
          headers: { Authorization: `Bearer ${token}` },
        })
        .then((resulit) => {
          setUser_id(resulit.data.user_id)
    
          console.log(resulit.data.user_id);
          dispacth(getcomment(resulit.data.result));
        })
        .catch((err) => {
          console.log(err);
        });
    }
  }, [open]);

  return (
    <div className="mainComment">
      {prodaict &&
        prodaict.map((element, index) => {
          return (
            <div>
              <h1 style={{ marginBottom: "1rem" }}>{element.title}</h1>
              <img style={{ width: "20rem" }} src={element.picUrlProd}></img>
              <p style={{ width: "80%" }}>{element.description} </p>
              {createButton("Add comment", "post", element.product_id)}
            </div>
          );
        })}

      <CDUComment
        method={method}
        setOpen={setOpen}
        open={open}
        pro_id={pro_id}
      />
      {state.comment &&
        state.comment.map((element, index) => {
          return (
            <div className="mainComment">
              <p>username</p>
              <h2 id="username" style={{}}>
                {element.name}
              </h2>
              <div className="Comments">
                <h3 style={{ width: "80%" }}>{element.comment}</h3>
              </div>
              {user_id == element.user_id ? (
                <div className="buttons">
                  {createButton("update comment", "put", element.comments_id)}
                  {createButton(
                    "delete comment",
                    "delete",
                    element.comments_id
                  )}
                </div>
               
              ) : (
                ""
              )}
               <div className="HR"></div>
            </div>
          );
        })}
    </div>
  );
};

export default Byid;
