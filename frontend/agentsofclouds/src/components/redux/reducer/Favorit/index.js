import { createSlice } from "@reduxjs/toolkit";

export const FavoritSlice = createSlice({
  name: "login",
  initialState: {
    Favorit: [],
    FavoritId: [],
  },
  reducers: {
    getFavoritList: (state, action) => {
      state.Favorit = action.payload;
      state.FavoritId=[]
      action.payload.forEach((element) => {
        state.FavoritId.push(element.product_id);
      });
    },
    deleteFavorit: (state, action) => {
      state.Favorit = state.Favorit.filter((element) => {
        return element.favorite_list !== action.payload.id;
      });
    },
  },
});

export const { getFavoritList, deleteFavorit } = FavoritSlice.actions;

export default FavoritSlice.reducer;
