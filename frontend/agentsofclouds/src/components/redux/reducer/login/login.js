import { createSlice } from "@reduxjs/toolkit";

export const loginSlice = createSlice({
  name: "login",
  initialState: {
    islogin: false,
  },
  reducers: {
    login: (state, action) => {
      console.log(action.payload);
      state.islogin = true;
      localStorage.setItem("token", action.payload);
    },
  },
});

export const { login } = loginSlice.actions;

export default loginSlice.reducer;
