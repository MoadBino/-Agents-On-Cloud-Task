import React, { useEffect, useState } from "react";
import "./styel.css";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import { getUserProducts } from "../redux/reducer/prodact/prodacts";
import { Link } from "react-router-dom";
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
        dispatch(getUserProducts(resulit.data.result.reverse()));
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  return (
    <div className="mainMyIteam">
      {state.userPordicts &&
        state.userPordicts.map((element) => {
          let title = element.title.split(" ").slice(0, 5).join(" ");

          return (
            <div className="mainMyiteam" key={element.product_id}>
              <Link to={`/byid/${element.product_id}`}>
                <div style={{ width: "20rem" }}>
                  <h3
                    style={{
                      color: "black",
                      marginBottom: "1rem",
                      padding: "10px",
                    }}
                  >
                    {title}
                  </h3>
                </div>
                <img style={{ width: "200px" ,marginLeft:"3rem"}} src={element.picUrlProd}></img>
              </Link>
              <div className="ProfileButton">
                <button
                  style={{ marginRight: "1rem", width: "7rem" }}
                  onClick={() => {
                    setId(element.product_id);
                    setOpen(true);
                    setMethod("post");
                  }}
                >
                  update
                </button>
                <button
                  style={{ marginRight: "1rem", width: "7rem" }}
                  onClick={() => {
                    setId(element.product_id);
                    setOpen(true);
                    setMethod("delete");
                  }}
                >
                  delete
                </button>
              </div>
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
