import { createSlice } from "@reduxjs/toolkit";

export const prodaictSlice = createSlice({
  name: "login",
  initialState: {
    prodaict: [],
  },
  reducers: {
    getUserProducts: (state, action) => {
      state.prodaict = action.payload;
    },
    updateProdact: (state, action) => {
      const newelement = action.payload;
      state.prodaict = state.prodaict.map((element) => {
        if (action.payload.id == element.product_id) {
          element.price = newelement.price || element.price;
          element.description = newelement.description || element.description;
          element.product_name =
            newelement.product_name || element.product_name;
          element.title = newelement.title || element.title;
          return element;
        } else {
          return element;
        }
      });
    },
    deleteProdact: (state, action) => {
      state.prodaict = state.prodaict.filter((element) => {
        return element.product_id !== action.payload;
      });
    },
    addprodact: (state, action)=>{
      
    },
  },
});

export const { getUserProducts, updateProdact, deleteProdact } =
  prodaictSlice.actions;

export default prodaictSlice.reducer;
