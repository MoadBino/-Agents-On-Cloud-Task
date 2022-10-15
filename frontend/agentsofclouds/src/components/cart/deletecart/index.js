import axios from "axios";
import { useDispatch } from "react-redux";
const Deletecart = (id) => {
  const token = localStorage.getItem("token") || "";
  axios
    .delete(`http://localhost:5000/cart/deleteCart/${id}`, {
      headers: { Authorization: `Bearer ${token}` },
    })
    .then((resulit) => {

    })
    .catch((err) => {
      console.log(err);
    });
};

export default Deletecart;
