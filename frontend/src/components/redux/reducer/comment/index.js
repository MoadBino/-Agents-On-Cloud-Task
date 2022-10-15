import { createSlice } from "@reduxjs/toolkit";

export const commentSlice = createSlice({
  name: "comment",
  initialState: {
    comment: [],
  },
  reducers: {
    getcomment: (state, action) => {
      state.comment = action.payload;
    },
    updatecomment: (state, action) => {

    },
  },
});

export const { getcomment, updatecomment } = commentSlice.actions;

export default commentSlice.reducer;
