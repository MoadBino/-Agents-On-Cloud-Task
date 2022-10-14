import { configureStore } from "@reduxjs/toolkit";
import loginSlice from "./reducer/login/login";
import prodaictSlice from "./reducer/prodact/prodacts";
import FavoritSlice from "./reducer/Favorit";
import cartSlice from "./reducer/cart";
export default configureStore({
  reducer: {
    login: loginSlice,
    prodaict: prodaictSlice,
    favorit: FavoritSlice,
    cart: cartSlice,
  },
});
