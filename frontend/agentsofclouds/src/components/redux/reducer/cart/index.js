import { createSlice } from "@reduxjs/toolkit";

export const cartSlice = createSlice({
  name: "car",
  initialState: {
    cart: [],
  },
  reducers: {
    getcart: (state, action) => {
      state.cart = action.payload;
    },
    addquantity: (state, action) => {
      state.cart = state.cart.map((element, index) => {
        if (element.cart_id == action.payload) {
          element.quantity = element.quantity + 1;
          return element;
        } else {
          return element;
        }
      });
    },
    deletequantity: (state, action) => {
      const data = action.payload;
      console.log(data);
      if (data.quantity == 1) {
        state.cart = state.cart.filter((element, index) => {
          return element.cart_id !== data.id;
        });
      } else {
        console.log("helloworld");
        state.cart = state.cart.map((element, index) => {
          console.log(element.cart_id == data.id, data, element.cart_id);
          if (element.cart_id == data.id) {
            element.quantity = element.quantity - 1;
            return element;
          } else {
            return element;
          }
        });
      }
    },
  },
});

export const { getcart, addquantity, deletequantity } = cartSlice.actions;

export default cartSlice.reducer;
