import React from "react";
import "./styel.css";
import { useNavigate, Link } from "react-router-dom";
import { useSelector, useDispatch } from "react-redux";
import { logout } from "../redux/reducer/login/login";
const Navbar = () => {
  const navigate=useNavigate()
  const dispacth = useDispatch();
  const state = useSelector((state) => {
    return {
      login: state.login.islogin,
    };
  });
  return (
    <div className="maindivnavbar">
      <div className="childdivnavbar">
        <Link to={"/home"}>
          <h3>Home</h3>
        </Link>

        {state.login ? (
          <div style={{ display: "flex", gap: "2rem" }}>
            <Link to={"/myiteams"}>
              <h3>Profile</h3>
            </Link>
            <Link to={"/Favorit"}>
              <h3>Favorit</h3>
            </Link>
            <Link to={"/cart"}>
              <h3>Cart</h3>
            </Link>
            <button
              onClick={() => {
                dispacth(logout());
                navigate("/login")
              }}
            >
              Logout
            </button>
          </div>
        ) : (
          <div style={{ display: "flex", gap: "2rem" }}>
            <Link to={"/register"}>
              <h3>Register</h3>
            </Link>
            <Link to={"/login"}>
              <h3>Login</h3>
            </Link>
          </div>
        )}
      </div>
    </div>
  );
};

export default Navbar;
