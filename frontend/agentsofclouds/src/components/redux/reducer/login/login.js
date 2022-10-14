import { createSlice } from "@reduxjs/toolkit";

export const loginSlice = createSlice({
  name: "login",
  initialState: {
    islogin: localStorage.getItem("islogin") ||false
  },
  reducers: {
    login: (state, action) => {
      console.log(action.payload);
      state.islogin = true;
      localStorage.setItem("token", action.payload);
      localStorage.setItem("islogin", true);
    },
    logout: (state, action) => {
      state.islogin = false;
      localStorage.removeItem("token");
      localStorage.removeItem("islogin");
    },
  },
});

export const { login, logout } = loginSlice.actions;

export default loginSlice.reducer;
