import { configureStore } from "@reduxjs/toolkit";
import loginSlice from "./reducer/login/login";
import prodaictSlice from "./reducer/prodact/prodacts";
export default configureStore({
  reducer: {
    login: loginSlice,
    prodaict: prodaictSlice,
  },
});
