import axios from "axios";
const Addtocart = (product_id, price_checkout) => {
  console.log(product_id);
  const token = localStorage.getItem("token") || "";
  axios
    .post(
      "http://localhost:5000/cart/addToCart",
      { product_id, price_checkout },
      { headers: { Authorization: `Bearer ${token}` } }
    )
    .then((resulit) => {
      console.log(resulit);
      console.log(token);
      console.log(product_id);
    })
    .catch((er) => {
      console.log(er);
      console.log(token);
    });
};

export default Addtocart;