import axios from "axios";

const Addtocart = (product_id, price_checkout) => {
  const token = localStorage.getItem("token") || "";
  axios
    .post(
      "http://localhost:5000/cart/addToCart",
      { product_id, price_checkout },
      { headers: { Authorization: `Bearer ${token}` } }
    )
    .then((resulit) => {
    })
    .catch((er) => {
      console.log(er);
    });
};
export default Addtocart;
