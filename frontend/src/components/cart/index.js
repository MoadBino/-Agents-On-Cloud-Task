import React, { useEffect} from "react";
import { getcart } from "../redux/reducer/cart";
import { useDispatch, useSelector } from "react-redux";
import { addquantity } from "../redux/reducer/cart/index";
import Addtocart from "./addtocart";
import Deletecart from "./deletecart";
import { deletequantity } from "../redux/reducer/cart/index";

import "./style.css";
import axios from "axios";

const Cart = () => {
  const state = useSelector((state) => {
    return {
      cart: state.cart.cart,
    };
  });

  const dispatch = useDispatch();
  const token = localStorage.getItem("token");
  useEffect(() => {
    axios
      .get(`http://localhost:5000/cart/getcart`, {
        headers: { Authorization: `Bearer ${token}` },
      })
      .then((resulit) => {
        dispatch(getcart(resulit.data.resulit));
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  return (
    <div>
      {state.cart &&
        state.cart.map((element) => {
          return (
            <div className="mainimgquan">
              <div className="imgquan">
                <img style={{ width: "100px" }} src={element.picUrlProd}></img>
                <p style={{ width: "30%" }}> {element.title} </p>
                <div className="quantity">
                  <button
                    onClick={() => {
                      if (element.quantity == 1) {
                        dispatch(
                          deletequantity({
                            id: element.cart_id,
                            quantity: element.quantity,
                          })
                        );
                        Deletecart(element.product_id);
                      } else {
                        dispatch(
                          deletequantity({
                            id: element.cart_id,
                            quantity: element.quantity,
                          })
                          
                        );
                        Deletecart(element.product_id);
                      }
                    }}
                  >
                    -
                  </button>
                  <p> {element.quantity} </p>
                  <button
                    onClick={() => {
                      Addtocart(element.product_id, element.price);
                      dispatch(addquantity(element.cart_id));
                    }}
                  >
                    +
                  </button>
                </div>
              </div>
            </div>
          );
        })}
    </div>
  );
};

export default Cart;
