import { configureStore } from "@reduxjs/toolkit";
import loginSlice from "./reducer/login/login";
export default configureStore({
  reducer: {
    login: loginSlice,
  },
});
