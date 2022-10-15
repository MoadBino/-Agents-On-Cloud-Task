import axios from "axios";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
const Addprodaict = () => {
  const token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1LCJpYXQiOjE2NjU2NDc2Njd9.oFZYfE9zU5ibMkKqC5HDc7g3H4kbr646xcFEI7xQ5c4";
  const Navigate = useNavigate();
  const [title, Settitle] = useState("");
  const [description, Setdescription] = useState("");
  const [product_name, setproduct_name] = useState("");
  const [price, setPrice] = useState(1);
  const [image, setImage] = useState("");
  const [url, setUrl] = useState("");
  const uploadImage = () => {
    const data = new FormData();
    data.append("file", image);
    data.append("upload_preset", "agentoncloud");
    data.append("cloud_name", "dyu6ls7j7");
    fetch("https://api.cloudinary.com/v1_1/dyu6ls7j7/image/upload", {
      method: "post",
      body: data,
    })
      .then((resp) => resp.json())
      .then((data) => {
        axios
          .post(
            "http://localhost:5000/Products/add/",
            {
              picUrlProd: data.url,
              title,
              product_name,
              price,
              description,
            },
            { headers: { Authorization: `Bearer ${token}` } }
          )
          .then((resulit) => {})
          .catch((err) => {
            console.log(err);
          });
      })
      .catch((err) => {
        console.log(err);
      });
  };
  return (
    <div className="addnews">
      <div className="addNewsChild">
        <textarea
          className="newsinput"
          placeholder="title"
          onChange={(e) => {
            Settitle(e.target.value);
          }}
        ></textarea>

        <textarea
          className="newsinput"
          placeholder="description"
          onChange={(e) => {
            Setdescription(e.target.value);
          }}
        ></textarea>
        <input
          type="number"
          placeholder="price"
          onChange={(e) => {
            setPrice(+e.target.value);
          }}
        ></input>
        <input
          placeholder="product_name"
          onChange={(e) => {
            setproduct_name(e.target.value);
          }}
        ></input>
        <div>
          <input
            type="file"
            onChange={(e) => setImage(e.target.files[0])}
          ></input>
          <button onClick={uploadImage}>Upload</button>
        </div>
      </div>
    </div>
  );
};
export default Addprodaict;
